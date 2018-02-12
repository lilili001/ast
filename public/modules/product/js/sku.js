var app = new Vue({
    el: '#sku-area',
    data: {
        colors:['red','blue','black'],
        sizes:['S','M','L'],
        capacitys:['8G','16G','32G','64G'],
        jixings:['thin','thick'],
        columNum:0,
        arrayColumn:[],
        res:{},
        result : []
    },
    methods:{
        labelChange(v,title){
            if( !this.res[title] ){
                this.res[title] = [v];
            }else{
                if( indexofArr(this.res[title],v) ==-1 ){
                    this.res[title].push(v);
                }else{
                    var index =  indexofArr( this.res[title] , v )  ;
                    this.res[title].splice(index,1);
                }
            }

            var arr1 = [];
            for(var title in this.res){
                if( this.res[title].length > 0 ){
                    arr1.push(this.res[title])
                }
            }
            this.result = doExchange(arr1);

            if( arr1.length > 0){
                this.createTable();
            }

            for(var i=0;i<4;i++){
                this.mergeCell( $('table'),i);
            }
        },
        createTable(){
            if( $('#createTable').children().length == 0 ){
                $('<table id="process" border="1" cellpadding="1" cellspacing="0"><thead><tr></tr></thead><tbody></tbody></table>').appendTo($('#createTable'));
            }
            var str = '';
            for(var title in this.res){
                str+= '<th>'+title+'</th>';
            }
            $('#createTable thead tr').html(str);

            var strBody = '';

            for(var i=0;i<this.result.length ; i++){
                var newArr = this.result[i].split(',');
                console.log(newArr);
                var str2='';
                for(var j=0;j<newArr.length;j++){
                    str2 +='<td>'+newArr[j]+'</td>'
                }
                strBody +='<tr>'+str2+'</tr>';
            }
            $('#createTable tbody').html(strBody);
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
})
/**检查 某个元素v 在数组中是否存在,存在返回1  不存在返回-1**/
function indexofArr(arr,v){
    for(var i=0;i<arr.length;i++){
        if(arr[i]==v){
            return i  //存在
        }
    }
    return -1  //不存在
}

function  doExchange (doubleArrays) {
    var len = doubleArrays.length;
    if (len >= 2) {
        var arr1 = doubleArrays[0];
        var arr2 = doubleArrays[1];
        var len1 = doubleArrays[0].length;
        var len2 = doubleArrays[1].length;
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
                newArray[_count] = doubleArrays[i];
                _count++;
            }
        }
        return doExchange(newArray);
    }
    else {
        return doubleArrays[0];
    }
}
