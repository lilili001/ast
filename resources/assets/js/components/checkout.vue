<template>
    <div>
        <el-form ref="formData" :model="formData" :rules="ruleFormData"  label-width="80px" >
            <el-row>
                    <el-card>
                        <el-form-item prop="addrSelected">
                            <h4>shipping Adress</h4>
                            <hr>
                            <el-button type="text" @click="dialogFormVisible = true">新增收货地址</el-button>
                            <div class="clearfix"></div>
                            <el-radio-group v-model="formData.addrSelected">
                                <el-radio v-for="(addr,key) in addrObj" :key="key" :label="addr.id">
                                    [ {{ addr.first_name + ' ' + addr.last_name }} ]
                                    {{  addr.street +  + ' ' + addr.city_label   + ' ' + addr.state_label  +  ' ' +  addr.country_label  +  ' | phone:'+ addr.telephone +
                                    (addr.is_default==1 ? '(默认地址)' : '')
                                    }}
                                </el-radio>
                            </el-radio-group>
                        </el-form-item>
                    </el-card>

                    <el-card class="mar-t20" shadow="hover">
                        <el-form-item prop="paymentMethod">
                            <section>
                                <h4>Payment Method</h4>
                                <el-radio-group v-model="formData.paymentMethod">
                                    <el-radio label="money_order">Check / Money Order</el-radio>
                                    <el-radio label="paypal">PayPal Express Payments</el-radio>
                                    <el-radio label="alipay">支付宝支付</el-radio>
                                    <el-radio label="wechat">微信支付</el-radio>
                                </el-radio-group>
                            </section>
                        </el-form-item>
                    </el-card>

                <el-card shadow="hover" class="mar-t20">
                    <h4>Order Summary</h4>
                    <hr>
                    <section>
                        <dl>
                            <dt class="mar-b20">Items in cart</dt>
                            <dd v-for="(item , key) in orderItems" :key="key">
                                <el-row :gutter="10">
                                    <el-col :span="4">
                                        <img width="40" :src="item.options.image" alt="">
                                    </el-col>
                                    <el-col :span="14">
                                        <div>{{item.name}}</div>
                                        <div>qty:{{item.qty}}</div>
                                        <div><span v-for="(option,opkey,index) in item.options.selectedItemLocale">
                                                {{opkey}}:{{option}}
                                                </span>
                                        </div>
                                    </el-col>
                                    <el-col :span="6" class="pull-right"> {{ currencySymbol }} {{ toFixed(item.subtotal * currencyObj.rate  ) }}</el-col>
                                </el-row>
                                <hr v-if="key!== orderItems.length-1 " style="margin:10px auto">
                            </dd>
                        </dl>
                    </section>
                </el-card>

                <el-card class="mar-t20">
                    <el-form-item label="备注" class="mar-t20">
                        <el-input size="small" type="textarea" v-model="formData.shippingRemark"></el-input>
                    </el-form-item>
                </el-card>

                <section class="pull-right mar-t20">
                    <el-row :gutter="10">
                        <el-col :span="14">Cart Total:</el-col>
                        <el-col :span="10"> {{currencySymbol}} {{toFixed(cartTotal)}}</el-col>
                    </el-row>
                    <div>Free Shipping</div>
                    <hr>
                    <h4>Order Total: <span class="price-red">{{ currencySymbol }} {{toFixed(cartTotal)}}</span> </h4>
                    <el-button :round=false type="primary"><a @click="submitOrder('formData')" >Place Oder</a></el-button>
                </section>
            </el-row>
        </el-form>

        <!--**********************************************************************************************************************************************-->


            <!--收货地址modal-->
        <el-form :model="address" ref="ruleAddressForm" :rules="addressRuleForm"   label-width="80px">

                <el-dialog title="收货地址" :visible.sync="dialogFormVisible">

                        <el-form-item label="邮箱地址" prop="email">
                            <el-input size="small" v-model="address.email"></el-input>
                        </el-form-item>

                        <el-form-item label="First Name" prop="first_name">
                                <el-input size="small" v-model="address.first_name"></el-input>
                        </el-form-item>

                        <el-form-item label="Last Name" prop="first_name">
                                <el-input size="small" v-model="address.last_name"></el-input>
                        </el-form-item>

                        <el-form-item label="街道地址" prop="street">
                            <el-input size="small" v-model="address.street"></el-input>
                        </el-form-item>

                        <el-form-item label="国家" prop="country_label">
                            <el-select auto-complete filterable clearable size="small" v-model="address.country"
                                       placeholder="请选择国家" @change="changeCountry">
                                <el-option v-for="(country,key) in countries" :key="key" :label="country.name_en"
                                           :value="country.id"></el-option>
                            </el-select>
                        </el-form-item>

                        <el-form-item label="州县" prop="state_label">
                            <el-input size="small" v-model="address.state_label"></el-input>
                        </el-form-item>

                        <el-form-item label="城市"  prop="city_label">
                            <el-input size="small" v-model="address.city_label"></el-input>
                        </el-form-item>

                        <el-form-item label="zip" prop="zip">
                            <el-input size="small" v-model="address.zip"></el-input>
                        </el-form-item>

                        <el-form-item label="手机号码" prop="telephone">
                            <el-input size="small" v-model="address.telephone"></el-input>
                        </el-form-item>

                        <el-form-item label="">
                            <el-checkbox v-model="address.is_default">Is Default</el-checkbox>
                        </el-form-item>

                    <div slot="footer" class="dialog-footer">
                        <el-button @click="dialogFormVisible = false">取 消</el-button>
                        <el-button type="primary" @click="saveAddress">确 定</el-button>
                    </div>
                </el-dialog>

        </el-form>
    </div>
</template>
<script>
    export default{
        name: 'checkout',
        props: ['items', 'user', 'addresses','cartTotal','currencySymbol' ,'currency' ],
        computed: {
            orderItems(){
                return JSON.parse(this.items);
            },
            userObj(){
                return JSON.parse(this.user);
            },
            checkoutUrl(){
                return  `/order/save/${this.formData.paymentMethod}`;
             },
            currencyObj(){
                return JSON.parse( this.currency )
            }
        },
        data(){
            return {
                addressRuleForm:{
                    email:[
                            { required: true, message: '邮箱不得为空', trigger: 'change' },
                            { type: 'email', message: '邮箱格式不正确', trigger: 'change' },
                        ],
                    first_name:[ { required: true, message: '名字不得为空', trigger: 'change' }],
                    street:[ { required: true, message: '街道不得为空', trigger: 'change' }],
                    country_label:[ { required: true, message: '国家不得为空', trigger: 'change' }],
                    city_label:[ { required: true, message: '城市不得为空', trigger: 'change' }],
                    state_label:[ { required: true, message: '省份不得为空', trigger: 'change' }],
                    zip:[ { required: true, message: '邮编不得为空', trigger: 'change' }],
                    telephone:[ { required: true, message: '手机不得为空', trigger: 'change' }],
                },
                ruleFormData:{
                    addrSelected:[{ required: true, message: '请选择收货地址', trigger: 'change' }],
                    paymentMethod:[{ required: true, message: '请选择付款方式', trigger: 'change' }],
                },
                dialogFormVisible: false,
                addrObj:JSON.parse(this.addresses),
                address: { //表单里的地址项
                    email: "",
                    first_name: "",
                    last_name: "",
                    street: '',
                    country: '',
                    city: '',
                    state: '',
                    country_label: '',
                    city_label: '',
                    state_label: '',
                    telephone: '',
                    zip: '',
                    is_default: false
                },
                formData: {
                    addrSelected: '',
                    shippingfreight: 1,
                    shippingRemark: '',
                    paymentMethod: 'paypal'
                },
                tableData: [],
                countries: [],
                provinces: [],
                cities: []
            }
        },
        created(){
            axios.get(route('getAllCountries')).then((res) => {
                this.countries = res.data.result;
            })
        },
        mounted(){
            let obj =  this.addrObj.find(item=> item.is_default ==1 );
            if( !!obj ) this.formData.addrSelected = obj.id;

            /*如果没有产品则不允许进入到该页面*/
            if( this.orderItems.length == 0 ){
                location.href="/";
            }

        },
        methods: {
            changeCountry(val){
                if (!val) return;
                this.provinces = this.cities = [];
                this.address.state = this.address.city = '';

                let obj = {};
                obj = this.countries.find((item) => {
                    return item.id === val;
                });
                this.address.country_label = obj.name_en;
            },
            saveAddress(){
                this.$refs['ruleAddressForm'].validate((valid) => {
                    if (valid) {
                        alert('submit!');
                        axios.post(route('address.store'), this.address).then((res) => {
                            if (res.data.code == 0) {
                                this.dialogFormVisible = false;
                                this.addrObj = res.data.result;
                                this.formData.addrSelected = this.addrObj[ this.addrObj.length-1 ].id
                            }
                        })
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            },
            submitOrder(formName){
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        //发送地址 付款方式 备注 到后台生成订单
                        axios.post( route('order.create') ,{
                            order_address : ( _.filter( this.addrObj , (item) => item.id == this.formData.addrSelected ) )[0],
                            order_payment_method: this.formData.paymentMethod,
                            order_remark : this.formData.shippingRemark,
                            order_freight: this.formData.shippingfreight
                        }).then((res)=>{
                            if(res.data.code == 0) location.href =  'http://localhost:8000/'+ res.data.result;
                        })
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            },
            toFixed(amount){
                return currency(amount).toString()
            }
        }
    }
</script>
<style scoped>
    .el-card {
        box-shadow: none !important;
        border-radius: 0
    }

    .el-radio {
        display: block;
        margin-left: 0 !important;
    }
</style>