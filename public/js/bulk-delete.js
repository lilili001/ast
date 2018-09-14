$(function(){
    //批量删除
    bulkDelete();
});

function bulkDelete(){
    var checkedRows = [];
    //全选
    $("#all_checked").click(function(){
        $('[name=row-check]:checkbox').prop('checked',this.checked);//checked为true时为默认显示的状态
        $('[name="row-check"]:checked').each(function(index,item){
            checkedRows.push( $(item).parents('tr').data('id') )
        });
    });

    $('[name="row-check"]').change(function(){
        checkedRows = [];

        if( $('[name="row-check"]:checked').length !== $('[name="row-check"]').length ){
            $("#all_checked").prop('checked',false)
        }else{
            $("#all_checked").prop('checked',true)
        }

        $('[name="row-check"]:checked').each(function(index,item){
            checkedRows.push( $(item).parents('tr').data('id') )
        });
    });

    //批量删除
    $('.bulk-delete').click(function(){
        if( checkedRows.length == 0 ){
            alert('尚未选择数据');
            return;
        }

        $.post( $(this).data('delete_url'),{_token: $('[name=_token]').val()  , ids:checkedRows } ).then(function(res){
            alert('删除成功');
            location.reload()
        });
        return false;
    })
}