<template>
    <div>
        <el-form ref="form" :model="formData" label-width="80px">

            <el-row :gutter="20">
                <!--column 1-->
                <el-col :span="8">
                    <el-card shadow="hover">
                        <h4>shipping Adress</h4>
                        <el-form-item label="邮箱地址">
                            <el-input size="small" v-model="formData.address.name"></el-input>
                        </el-form-item>

                        <el-form-item label="姓名">
                            <el-col :span="11" style="padding-left:0">
                                <el-input size="small" v-model="formData.address.firstname"></el-input>
                            </el-col>
                            <el-col class="line" :span="2">-</el-col>
                            <el-col :span="11">
                                <el-input size="small" v-model="formData.address.lastname"></el-input>
                            </el-col>
                        </el-form-item>

                        <el-form-item label="街道地址">
                            <el-input size="small" v-model="formData.address.address"></el-input>
                        </el-form-item>

                        <el-form-item label="国家">
                            <el-select size="small" v-model="formData.address.country" placeholder="活动区域">
                                <el-option label="区域一" value="shanghai"></el-option>
                                <el-option label="区域二" value="beijing"></el-option>
                            </el-select>
                        </el-form-item>

                        <el-form-item label="城市">
                            <el-select size="small" v-model="formData.address.city" placeholder="活动区域">
                                <el-option label="区域一" value="shanghai"></el-option>
                                <el-option label="区域二" value="beijing"></el-option>
                            </el-select>
                        </el-form-item>

                        <el-form-item label="州县">
                            <el-input size="small" v-model="formData.address.state"></el-input>
                        </el-form-item>

                        <el-form-item label="手机号码">
                            <el-input size="small" v-model="formData.address.phone"></el-input>
                        </el-form-item>

                        <el-form-item label="发货备注">
                            <el-input size="small" type="textarea" v-model="formData.address.shippingRemark"></el-input>
                        </el-form-item>
                    </el-card>
                </el-col>
                <!--column 2-->
                <el-col :span="8">
                    <div class="grid-content bg-purple">
                        <el-card shadow="hover">
                            <section>
                                <h4>address method</h4>
                                <el-radio-group v-model="formData.shipping">
                                    <el-radio :label="1"><span>$0.00</span><span>Free</span><span>Free Shipping</span>
                                    </el-radio>
                                    <el-radio :label="2"><span>$10.00</span><span>Table Rate</span><span>Best Way</span>
                                    </el-radio>
                                    <el-radio :label="3"><span>$20.00</span><span>Fixed</span><span>Flat Rate</span>
                                    </el-radio>
                                </el-radio-group>
                            </section>
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
                    </div>
                </el-col>
                <!--column 3-->
                <el-col :span="8">
                    <el-card shadow="hover">
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
                                        <el-col :span="6" class="pull-right">$54.00</el-col>
                                    </el-row>
                                    <hr style="margin:10px auto">
                                </dd>
                            </dl>
                        </section>

                        <section>
                            <el-row :gutter="10">
                                <el-col :span="18">Cart Total:</el-col>
                                <el-col :span="6">$54.00</el-col>
                            </el-row>
                            <div>Free Shipping</div>
                        </section>
                        <hr>
                        <h4>Order Total:$54.00</h4>
                        <el-button :round=false type="primary">Place Oder</el-button>

                    </el-card>
                </el-col>
            </el-row>

        </el-form>
    </div>
</template>
<script>
    export default{
        name: 'checkout',
        props: ['items','user'],
        computed: {
            orderItems(){
                return JSON.parse(this.items);
            },
            userObj(){
                return JSON.parse(this.user);
            }
        },
        data(){
            return {
                formData: {
                    address: {
                        email: "",
                        firstname: "",
                        lastname: "",
                        address: '',
                        country: '',
                        city: '',
                        state: '',
                        phone: '',
                        shippingRemark: ''
                    },
                    shipping: 1,
                    paymentMethod: 1
                },
                tableData: []
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