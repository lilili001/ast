<template>
    <div style="margin-top:20px;">
        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
            <div v-for="(attr,key1) in saleAttrs">
                <el-form-item :label="attr.name" :key="attr.key" :prop="attr.key">
                    <el-select v-model="ruleForm[attr.key]" @change="" placeholder="请选择属性集">
                        <el-option v-for="(option,key) in attr.options" :key="key" :label="option[locale]" :value="key"></el-option>
                    </el-select>
                </el-form-item>
            </div>
            <el-form-item>
                <el-button type="primary" @click="submitForm('ruleForm')">确认</el-button>
                <!--<el-button @click="resetForm('ruleForm')">重置</el-button>-->
            </el-form-item>
        </el-form>
    </div>
</template>
<script>
    export default {
        props:['attrsets','locale','product','fillsale'],
        computed:{
           attrsetsObj:function () {
               return JSON.parse(this.attrsets)
           },
            productObj:function () {
                return JSON.parse(this.product)
            },
            fillSaleObj:function(){
               return JSON.parse(this.fillsale)
            }
        },
        data() {
            return {
                ruleForm: {
                },
                saleAttrs:[],
                rules: {
//                    attrset_id: [
//                        { required: true, message: '请选择属性集', trigger: 'change' }
//                    ]
                }
            };
        },
        mounted(){
            this.fnChangeAttrSet();
            if(!this.fillSaleObj) return;
            this.fillSaleObj.map((item)=>{
                let val = item.value.replace(/^"+/,"").replace(/"+$/,"");
                this.ruleForm[item['attr_key']] = val;
            });
        },
        methods: {
            fnChangeAttrSet(){
                axios.post(route('admin.product.attrset.saleAttrs'),{
                    attrset_id:this.productObj.attrset_id
                }).then((res)=>{
                    this.saleAttrs = res.data[0].attrs;
                });
            },
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        axios.post(route('admin.product.edit.updateSaleAttrs',{'productid':this.productObj.id}),
                            this.ruleForm).then((res)=>{
                            if(res.data.code == 0){
                                this.$message({
                                    message: '成功',
                                    type: 'success'
                                });
                            }
                        });

                    } else {
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            }
        }
    }
</script>