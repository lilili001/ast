<template>
    <div>
        <el-table
                ref="multipleTable"
                :data="tableData3"
                tooltip-effect="dark"
                style="width: 100%"
                @select="handleSelect"
                >
            <el-table-column
                    type="selection"
                    width="55">
            </el-table-column>

            <el-table-column
                    prop="image"
                    :label="trans('cart.product_image')"
                    width="120">
                <template slot-scope="scope">
                    <img :src="scope.row.options.image" alt="">
                </template>
            </el-table-column>

            <el-table-column
                    prop="name"
                    :label="trans('cart.product_name')"
                    width="180">
                <template slot-scope="scope">
                    <div><a :href="scope.row.slug">{{scope.row.name}}</a></div>
                    <div><ul class="fon12">
                        <li v-for="(value,key) in (scope.row.options.selectedItemLocale)" :key="key"> {{key}}:{{value}} </li>
                    </ul></div>
                </template>
            </el-table-column>
            <el-table-column
                    prop="price"
                    :label="trans('cart.unit_price')"
                    show-overflow-tooltip>
            </el-table-column>
            <el-table-column
                prop="quantity"
                    :label="trans('cart.qty')"
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <el-input-number  v-model="scope.row.quantity" @change="handleChange(scope.row,$event)" :min="1" :max="scope.row.total" size="mini"></el-input-number>
                </template>
            </el-table-column>
            <el-table-column
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <i class="el-icon-delete pointer" @click="remove( scope.row, scope.$index)"></i>
                </template>
            </el-table-column>
        </el-table>

        <div style="margin-top:20px;" class="pull-right">
            <span class="inline-block" style="padding-right:10px;">合计：<h5 class="inline-block">USD $2345.00</h5></span>
            <el-button type="warning" @click="checkout" plain>结算</el-button>
        </div>
    </div>
</template>
<style>
    .fon12{font-size:12px;}
    .el-table th{background:#f9f8f7}
</style>
<script>
    export default {
        props:['cart-items'],
        computed:{
            tableData3:function(){
                return this.cartItems ?  JSON.parse( this.cartItems ) : [];
            }
        },
        data() {
            return {
                multipleSelection: []
            }
        },
        methods: {
            handleSelect(selection,row){
                this.multipleSelection = selection;
                var $isRowSelected = _.where(selection,{'__raw_id':row.__raw_id}).length > 0 ;

                axios.post(route('updateStatus',{product:row.id}),{
                    rawId:row.__raw_id,
                    type:$isRowSelected
                }).then((res)=>{

                })
            },
            handleChange(row,val){
                let rawId = row.__raw_id;
                axios.post( route('updateCart',{product:row.id}),{
                    rawId:rawId,
                    quantity:val
                }).then((res)=>{
                    if(res.data.code == -1){
                        this.tableData3[index].quantity = row.quantity;
                    }
                });
            },
            remove(row,index){
                axios.post( route('deleteCartItem',{product:row.id}),{
                    rawId:row.__raw_id
                }).then((res)=>{
                    this.tableData3.splice(index,1);
                });
            },
            checkout(){
                if(this.multipleSelection.length == 0){
                    this.$message({
                        message: '请选择购物车',
                        type: 'warning'
                    });
                    return;
                }else{
                      location.href="/checkout";
                }
            }
        },
        mounted(){
            this.tableData3.forEach(row => {
                if(row.type){
                    this.$refs.multipleTable.toggleRowSelection(row,true);
                    this.multipleSelection.push(row);
                }
            });
        }
    }
</script>