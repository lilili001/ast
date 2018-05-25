<template>
    <div>
        <el-table
                ref="multipleTable"
                :data="tableData3"
                tooltip-effect="dark"
                style="width: 100%"
                @select="handleSelect"
                @select-all="handleSelectAll"
                >
            <el-table-column
                    type="selection"
                    width="80">
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
                    :label="trans('cart.price')"
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <div class="price">
                        <span class="multiSign">{{ currencyObj['currency_to'] + currencyObj['symbol'] }} </span>
                        <span class="multiPrice" :data-price="scope.row.price" >{{  toFixed( (scope.row.price) * currencyObj['rate']  )   }}</span>
                    </div>
                </template>
            </el-table-column>

            <el-table-column
                prop="quantity"
                    :label="trans('cart.qty')">
                <template slot-scope="scope">
                    <el-input-number  v-model="scope.row.qty" @change="updateQty(scope.row,$event)" :min="1" :max="scope.row.total" size="mini"></el-input-number>
                </template>
            </el-table-column>

            <el-table-column
                    prop="subtotal"
                    :label="trans('cart.subtotal')"
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <div class="price subtotal">
                        <span class="multiSign">{{ currencyObj['currency_to'] + currencyObj['symbol'] }} </span>
                        <span class="multiPrice" :data-subtotal="scope.row.subtotal" >{{  toFixed( (scope.row.subtotal) * currencyObj['rate']  )   }}</span>
                    </div>
                </template>
            </el-table-column>

            <el-table-column>
                <template slot-scope="scope">
                    <i class="el-icon-delete pointer" @click="remove( scope.row, scope.$index)"></i>
                </template>
            </el-table-column>
        </el-table>

        <div style="margin-top:20px;" class="pull-right">
            <span class="inline-block" style="padding-right:10px;">合计：<h5 class="inline-block price-red"> {{currencyObj['currency_to'] + currencyObj['symbol']}} {{  selectedCartTotal }}</h5></span>
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
        props:[ 'currency'],
        computed:{
            currencyObj(){
                return JSON.parse(this.currency);
            }
        },
        data() {
            return {
                multipleSelection: [],
                selectedCartTotal : '',
                tableData3:[]
            }
        },
        methods: {
            handleSelect(selection,row){
                this.multipleSelection = selection;
                var $isRowSelected = _.where(selection,{'rowId':row.rowId}).length > 0 ;
                axios.post(route('updateStatus',{product:row.id},{params:{timeout:6000,async:true}}),{
                    rowId:row.rowId,
                    type:$isRowSelected
                }).then((res)=>{
                    var data = res.data.result  ;
                    this.sortData(data);
                })
            },
            updateQty(row,val){
                let rawId = row.rowId;
                axios.post( route('updateCart',{product:row.id}),{
                    rawId:rawId,
                    qty:val
                }).then((res)=>{
                        var data = res.data.result;
                        this.sortData(data);
                });
            },
            handleSelectAll(selection){
                 axios.post(route('bulkUpdateStatus'),{
                     data:selection.length
                 }).then((res)=>{
                     var data =  res.data.result  ;
                     this.sortData(data);
                 })
            },
            remove(row,index){
                axios.post( route('deleteCartItem',{product:row.id}),{
                    rawId:row.rowId
                }).then((res)=>{
                    if(res.data.code == 0){
                        var data = res.data.result;
                        this.sortData(data);
                    }else{
                        this.$message.error('未知错误');
                    }
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
            },
            sortData(data){
                this.tableData3 = _.sortBy( _.values( data.cart )  , function(item){
                    return item.options.index;
                });

                this.toggleRow();
                this.selectedCartTotal = currency(data.total * this.currencyObj.rate).toString();
            },
            toggleRow(){
                var timer = setTimeout(()=>{
                    this.tableData3.forEach(row => {
                        if(row.options.selected){
                            this.$refs.multipleTable.toggleRowSelection(row,true);
                            this.multipleSelection.push(row);
                        }else{
                            this.$refs.multipleTable.toggleRowSelection(row,false);
                        }
                    });
                    clearInterval(timer);
                },100);
            },
            toFixed(amount){
                return currency(amount).toString()
            },
        },
        mounted(){
            axios.post(route('cart.cartItems')).then((res)=>{
                var data = res.data.result;
                this.sortData(data);
            });
        }
    }
</script>