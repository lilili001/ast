$(function(){
    var langs = JSON.parse( window.AsgardCMS.langs );

    if( langs.length > 0 ){
        $.each(langs,function(index,item){
            var $obj = $('[name="'+item+'[title]"]');
            slug($obj,item);
        });

    }else{
        var $obj = $('input[name="title"]');
        slug($obj);
    }

    function slug($obj,lang){
        var timer;
        $obj.keyup(function(){
            var val = $(this).val();
                clearInterval(timer);
                if( this.name.indexOf('title') != -1 ){
                      timer = setTimeout(function(){
                        $.post(route('bdtrans'),{
                            _token:$('[name="_token"]').val(),
                            slug:val
                        }).then(function(res){
                            if(lang){
                                $('[name="'+lang+'[slug]"]').val(res.result.res)
                            }else{
                                $('[name="slug"]').val(res.result.res)
                            }
                            clearInterval(timer);
                            timer = null;
                        })
                    },1000)
                }
        })
    }
});