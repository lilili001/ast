<template>
    <div>
        <el-form ref="form" :model="formData" label-width="80px">
            <el-row>
                <el-card>
                    <h4>shipping Adress</h4>
                    <hr>
                    <el-button type="text" @click="dialogFormVisible = true">新增收货地址</el-button>
                    <div class="clearfix"></div>
                    <el-radio-group v-model="formData.addrSelected">
                        <el-radio v-for="(addr,key) in addrObj" :key="key" :label="addr.address_id">
                            {{addr.country_label + ' ' + addr.state_label + ' ' + addr.city_label + '   ' + addr.street +
                            (addr.is_default==1 ? '(默认地址)' : '')
                            }}
                        </el-radio>
                    </el-radio-group>
                </el-card>

                <el-card class="mar-t20" shadow="hover">
                    <section>
                        <h4>Payment Method</h4>
                        <el-radio-group v-model="formData.paymentMethod">
                            <el-radio :label="1">Check / Money Order</el-radio>
                            <el-radio :label="2">PayPal Express Payments</el-radio>
                            <el-radio :label="3">支付宝支付</el-radio>
                            <el-radio :label="4">微信支付</el-radio>
                        </el-radio-group>
                    </section>
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
                                        <div>qty:{{item.quantity}}</div>
                                        <div><span v-for="(option,opkey,index) in item.options.selectedItemLocale">
                                                {{opkey}}:{{option}}
                                                </span>
                                        </div>
                                    </el-col>
                                    <el-col :span="6" class="pull-right">{{cartTotal}}</el-col>
                                </el-row>

                                <hr v-if="key!== orderItems.length-1 " style="margin:10px auto">
                            </dd>
                        </dl>
                    </section>
                </el-card>

                <el-card class="mar-t20">
                    <el-form-item label="备注" class="mar-t20">
                        <el-input size="small" type="textarea" v-model="formData.address.shippingRemark"></el-input>
                    </el-form-item>
                </el-card>


                <section class="pull-right mar-t20">
                    <el-row :gutter="10">
                        <el-col :span="18">Cart Total:</el-col>
                        <el-col :span="6">{{cartTotal}}</el-col>
                    </el-row>
                    <div>Free Shipping</div>

                    <hr>
                    <h4>Order Total:{{cartTotal}}</h4>
                    <el-button :round=false type="primary"><a href="/order/save">Place Oder</a></el-button>

                </section>
            </el-row>

            <!--收货地址modal-->
            <el-dialog title="收货地址" :visible.sync="dialogFormVisible">
                <div>
                    <el-form-item label="邮箱地址">
                        <el-input size="small" v-model="formData.address.email"></el-input>
                    </el-form-item>

                    <el-form-item label="姓名">
                        <el-col :span="11" style="padding-left:0">
                            <el-input size="small" v-model="formData.address.first_name"></el-input>
                        </el-col>
                        <el-col class="line" :span="2" style="text-align:center">-</el-col>
                        <el-col :span="11">
                            <el-input size="small" v-model="formData.address.last_name"></el-input>
                        </el-col>
                    </el-form-item>

                    <el-form-item label="街道地址">
                        <el-input size="small" v-model="formData.address.street"></el-input>
                    </el-form-item>

                    <el-form-item label="国家">
                        <el-select auto-complete filterable clearable size="small" v-model="formData.address.country"
                                   placeholder="请选择国家" @change="changeCountry">
                            <el-option v-for="(country,key) in countries" :key="key" :label="country.name_en"
                                       :value="country.id"></el-option>
                        </el-select>
                    </el-form-item>

                    <el-form-item label="州县">
                        <el-select filterable clearable size="small" v-model="formData.address.state"
                                   placeholder="请选择省份" @change="changeProvince">
                            <el-option v-for="(item,key) in provinces" :key="key" :label="item.name_en"
                                       :value="item.id"></el-option>
                        </el-select>
                    </el-form-item>

                    <el-form-item label="城市">
                        <el-select filterable clearable size="small" v-model="formData.address.city" placeholder="请选择城市"
                                   @change="changeCity">
                            <el-option v-for="(item,key) in cities" :key="key" :label="item.name_en"
                                       :value="item.id"></el-option>
                        </el-select>
                    </el-form-item>

                    <el-form-item label="zip">
                        <el-input size="small" v-model="formData.address.zip"></el-input>
                    </el-form-item>
                    <el-form-item label="手机号码">
                        <el-input size="small" v-model="formData.address.telephone"></el-input>
                    </el-form-item>
                    <el-checkbox v-model="formData.address.is_default">Is Default</el-checkbox>
                </div>

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
        props: ['items', 'user', 'addresses','cartTotal'],
        computed: {
            orderItems(){
                return JSON.parse(this.items);
            },
            userObj(){
                return JSON.parse(this.user);
            },
            addrObj(){
                return JSON.parse(this.addresses);
            }
        },
        data(){
            return {
                dialogFormVisible: false,
                formData: {
                    address: {
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
                    addrSelected: '',
                    shippingfreight: 1,
                    shippingRemark: '',
                    paymentMethod: 1
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
            if( !!obj ) this.formData.addrSelected = obj.address_id;
        },
        methods: {
            changeCountry(val){
                if (!val) return;
                this.provinces = this.cities = [];
                this.formData.address.state = this.formData.address.city = '';

                let obj = {};
                obj = this.countries.find((item) => {
                    return item.id === val;
                });
                this.formData.address.country_label = obj.name_en;

                axios.get(route('getAllProvinces', {'countryId': val})).then((res) => {
                    this.provinces = res.data.result;
                })
            },
            changeProvince(val){
                if (!val) return;
                this.cities = [];
                this.formData.address.city = '';

                let obj = {};
                obj = this.provinces.find((item) => {
                    return item.id === val;
                });
                this.formData.address.state_label = obj.name_en;

                axios.get(route('getAllCities', {'provinceId': val})).then((res) => {
                    this.cities = res.data.result;
                })
            },
            changeCity(val){
                if (!val) return;
                let obj = {};
                obj = this.cities.find((item) => {
                    return item.id === val;
                });
                this.formData.address.city_label = obj.name_en;

            },
            saveAddress(){
                axios.post(route('address.store'), this.formData.address).then((res) => {
                    if (res.data.code == 0) {
                        this.dialogFormVisible = false;
                        location.reload();
                    }
                })
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