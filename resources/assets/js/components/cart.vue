<template>
    <div>
        <el-table
                ref="multipleTable"
                :data="tableData3"
                tooltip-effect="dark"
                style="width: 100%"
                @selection-change="handleSelectionChange">
            <el-table-column
                    type="selection"
                    width="55">
            </el-table-column>

            <el-table-column
                    prop="image"
                    :label="trans('cart.product_image')"
                    width="120">
                <template slot-scope="scope">
                    <img :src="scope.row.image" alt="">
                </template>
            </el-table-column>

            <el-table-column
                    prop="name"
                    :label="trans('cart.product_name')"
                    width="180">
                <template slot-scope="scope">
                    <div><a :href="scope.row.slug">{{scope.row.name}}</a></div>
                    <div><ul class="fon12">
                        <li v-for="(value,key) in scope.row.selectedItemLocale" :key="key"> {{key}}:{{value}} </li>
                    </ul></div>
                </template>
            </el-table-column>
            <el-table-column
                    prop="price"
                    :label="trans('cart.unit_price')"
                    show-overflow-tooltip>
            </el-table-column>
            <el-table-column
                    prop="qty"
                    :label="trans('cart.qty')"
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <el-input-number v-model="scope.row.qty" :min="1" :max="scope.row.total" size="mini"></el-input-number>
                </template>
            </el-table-column>
            <el-table-column
                    show-overflow-tooltip>
                <template slot-scope="scope">
                    <i class="el-icon-delete pointer" @click="remove(scope.$index,scope.row.__raw_id)"></i>
                </template>
            </el-table-column>
        </el-table>

        <div style="margin-top:20px;" class="pull-right">
            <span class="inline-block" style="padding-right:10px;">合计：<h5 class="inline-block">USD $2345.00</h5></span>
            <el-button type="warning"  plain>结算</el-button>
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
                return this.cartItems ? JSON.parse( this.cartItems ) : [];
            }
        },
        data() {
            return {
                multipleSelection: []
            }
        },
        methods: {
            toggleSelection(rows) {
                if (rows) {
                    rows.forEach(row => {
                        this.$refs.multipleTable.toggleRowSelection(row);
                    });
                } else {
                    this.$refs.multipleTable.clearSelection();
                }
            },
            handleSelectionChange(val) {
                this.multipleSelection = val;
            },
            remove(index,rowId){

            }
        },
        mounted(){

        }
    }
</script>