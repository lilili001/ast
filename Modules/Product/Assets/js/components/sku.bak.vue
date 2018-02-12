<template>
    <div>
        <div v-for="(options,key ) in JSON.parse(skuAttrs)">
            <span>{{key}}:</span>
            <el-checkbox-group v-model="checkList[key]" @change="labelChange">
                <el-checkbox :label="option" :key="option" v-for="option in options">{{option}}</el-checkbox>
            </el-checkbox-group>
        </div>

        <!--<el-table :data="tableData6" :span-method="objectSpanMethod" border style="width: 100%; margin-top: 20px">-->

            <!--<div v-for="(key,index ) in atrKeys">-->
                    <!--<el-table-column :prop="key" :label="key" ></el-table-column>-->
            <!--</div>-->
        <!--</el-table>-->
        <div id="createTable"></div>
    </div>
</template>
<script>
    export default{
        props:['sku-attrs'],
        name:'sku',
        data(){
            const skuAttrs = JSON.parse(this.skuAttrs);
            let checkList={},atrKeys=[];
            for(let attr in skuAttrs){
                checkList[attr] = [];
                atrKeys.push(attr);
            }
            atrKeys = [...atrKeys,'price','stock'];
            return {
                tableData6: [],
                checkList:checkList,
                result : [],
                atrKeys: atrKeys
            }
        },
        mounted(){

        },
        methods:{
            indexMethod(index) {
                return index +1;
            },
            objectSpanMethod({ row, column, rowIndex, columnIndex }) {
                // console.log('========1.row===========')
                // console.log(row);
                // console.log('========2.column===========')
                // console.log(column);
                // console.log('========3.rowIndex===========')
                // console.log(rowIndex);
                // console.log('========4.columnIndex===========')
                // console.log(columnIndex);
            },

            labelChange(){
                this.tableData6 = [];
                var arr1 = _.values(this.checkList);
                _.remove(arr1,(arr)=> arr.length==0 );
                this.createTable();
                this.result = this.doExchange(arr1);
                //console.log(this.result);
                let atrKeys = Object.keys(this.checkList);
                if(this.checkEveryAttrSelected(arr1)){
                    this.tableData6 = this.result.map(str=> {
                            const item = {};
                            const newArr = str.split(',');
                            atrKeys.map( (key,i) =>{
                                item[key] = newArr[i];
                                return item;
                            });
                            item['price'] = 12;
                            item['stock'] = 100;
                            return item;
                        }
                    )
                }else{
                    this.tableData6 = [];
                }

                const table = $('table');

                arr1.map((arr,i)=>this.mergeCell( table ,i) );
            },
            checkEveryAttrSelected(arr1){
                return arr1.length == (_.values(this.checkList)).length;
            },
            createTable(){
                if( $('#createTable').children().length == 0 ){
                    $('<table id="process" border="1" cellpadding="1" cellspacing="0"><thead><tr></tr></thead><tbody></tbody></table>').appendTo($('#createTable'));
                }
                var str = '';
                for(var title in this.checkList){
                    str+= '<th>'+title+'</th>';
                }
                $('#createTable thead tr').html(str);

                var strBody = '';

                for(var i=0;i<this.result.length ; i++){
                    var newArr = this.result[i].split(',');
                    //console.log(newArr);
                    var str2='';
                    for(var j=0;j<newArr.length;j++){
                        str2 +='<td>'+newArr[j]+'</td>'
                    }
                    strBody +='<tr>'+str2+'</tr>';
                }
                $('#createTable tbody').html(strBody);
            },
            doExchange (arr) {
                var len = arr.length;
                if (len >= 2) {
                    var arr1 = arr[0];
                    var arr2 = arr[1];
                    var len1 = arr[0].length;
                    var len2 = arr[1].length;
                    var newlen = len1 * len2;
                    var temp = new Array(newlen);
                    var index = 0;

                    for (var i = 0; i < len1; i++) {
                        for (var j = 0; j < len2; j++) {
                            temp[index] = arr1[i] + "," + arr2[j];
                            index++;
                        }
                    }
                    var newArray = new Array(len - 1);
                    newArray[0] = temp;

                    if (len > 2) {
                        var _count = 1;
                        for (var i = 2; i < len; i++) {
                            newArray[_count] = arr[i];
                            _count++;
                        }
                    }
                    return this.doExchange(newArray);
                }
                else {
                    return arr[0];
                }
            },
            mergeCell($table,colIndex){
                $table.data('col-content', ''); // 存放单元格内容
                $table.data('col-rowspan', 1); // 存放计算的rowspan值 默认为1
                $table.data('col-td', $()); // 存放发现的第一个与前一行比较结果不同td(jQuery封装过的), 默认一个"空"的jquery对象

                $table.data('trNum', $('tbody tr', $table).length); // 要处理表格的总行数, 用于最后一行做特殊处理时进行判断之用
                // 我们对每一行数据进行"扫面"处理 关键是定位col-td, 和其对应的rowspan
                $('tbody tr', $table).each(function (index) {
                    // td:eq中的colIndex即列索引
                    var $td = $('td:eq(' + colIndex + ')', this);

                    // 取出单元格的当前内容
                    var currentContent = $td.html();

                    // 第一次时走此分支
                    if ($table.data('col-content') == '') {
                        $table.data('col-content', currentContent);
                        $table.data('col-td', $td);
                    } else {
                        // 上一行与当前行内容相同
                        if ($table.data('col-content') == currentContent) {
                            // 上一行与当前行内容相同则col-rowspan累加, 保存新值
                            var rowspan = $table.data('col-rowspan') + 1;
                            $table.data('col-rowspan', rowspan);
                            // 值得注意的是 如果用了$td.remove()就会对其他列的处理造成影响
                            $td.hide();
                            // 最后一行的情况比较特殊一点
                            // 比如最后2行 td中的内容是一样的, 那么到最后一行就应该把此时的col-td里保存的td设置rowspan
                            if (++index == $table.data('trNum'))
                                $table.data('col-td').attr('rowspan', $table.data('col-rowspan'));
                        } else { // 上一行与当前行内容不同
                            // col-rowspan默认为1, 如果统计出的col-rowspan没有变化, 不处理
                            if ($table.data('col-rowspan') != 1) {
                                $table.data('col-td').attr('rowspan', $table.data('col-rowspan'));
                            }
                            // 保存第一次出现不同内容的td, 和其内容, 重置col-rowspan
                            $table.data('col-td', $td);
                            $table.data('col-content', $td.html());
                            $table.data('col-rowspan', 1);
                        }
                    }
                });
            }
        }//end method
    }

    /**检查 某个元素v 在数组中是否存在,存在返回1  不存在返回-1**/
    function indexofArr(arr,v){
        for(var i=0;i<arr.length;i++){
            if(arr[i]==v){
                return i  //存在
            }
        }
        return -1  //不存在
    }



</script>