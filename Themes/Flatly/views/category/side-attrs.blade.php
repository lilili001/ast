<?php
    $baseurl =  url()->current();
    $query_strings = request()->all();
?>

 @if( count( $query_strings ) > 0 )
<div>清空筛选条件 <span onclick="reset()" class="glyphicon glyphicon-remove"></span></div>
@endif

@foreach( $filterableAttrs as $attr )
    <?php
        $key = $attr->key;
        //product__attr 查询当前属性 有没有对应的产品
        $pdcIdsByAttr = \Modules\Product\Entities\Attr::where('attr_key',$key)->pluck('product_id')->toArray();
        //查询到的产品ids和所有产品ids比较 差集

        $jiaoji = array_intersect( $allproductIds , $pdcIdsByAttr );
    ?>
    @if( !empty( $jiaoji ) )
    <div class="list-group" id="layerd-filters">
        <a class="list-group-item active">
           {{ $attr->name  }}
        </a>
        @foreach($attr->options as  $value=>$option)
            <?php
                $products1 = \Modules\Product\Entities\Attr::where([
                        ['attr_key',$key],
                        ['value','like','%'. $value.'%']
                ]
                    )->pluck('product_id')->toArray();
                $jiaoji1 = array_intersect($allproductIds,$products1);
            ?>
            @if( !empty($jiaoji1)  )
                <a data-key="{{ $key }}" data-value="{{$value}}" href="<?php
                        $newParams = [];
                        if( !empty($query_strings) ){

                            if ( array_key_exists( $attr->key,$query_strings ) ){
                                foreach ( $query_strings as $v1=>$v2 ){
                                    if ( $v1 == $key  &&  !in_array( $value, explode('-',$v2) ) ){
                                        $v2 = $v2.'-'.$value;
                                    }
                                    $newParams[$v1] = $v2;
                                }
                            }else{
                                $newParams = array_merge( $query_strings,[$key=>$value] );
                            }

                        }else{
                            $newParams = [$key=>$value];
                        }
                        echo $baseurl.'?'.http_build_query( $newParams    )
                ?>" class="list-group-item"> <input type="checkbox" class="selecter" <?php

                            if( isset( $query_strings[$key] )  ){
                                echo   in_array( $value, explode( '-', $query_strings[$key] ) ) ? 'checked' : '';
                            }
                        ?>> {{  $option[locale()]  }}</a>
            @endif
        @endforeach
    </div>
    @endif
@endforeach

@section('scripts')
    <script>
        var query_string = <?php echo json_encode( $query_strings );?>   ;

        $(function(){

            $('#layerd-filters input[type="checkbox"]').unbind('change').on('change' ,function () {

                var isChecked = $(this).prop('checked') ;

                var $key = $(this).parent('a').data('key');
                var $value = $(this).parent('a').data('value');

                var isChecked = $(this).prop('checked') ;
                if( !isChecked ){
                    if( query_string.length !==0 ){
                        var $arr = query_string[$key].split('-' );

                        $arr = _.without( $arr, $value );

                        if($arr.length == 0){
                            query_string =  _.omit( query_string, $key)
                        }else{
                            query_string[$key] = $arr.join('-');
                        }
                        var str = '';

                        for(var attr in query_string){
                            str += attr+'='+query_string[attr] + '&' ;
                        }
                        str= str.substr('0',str.length-1);
                        location.href = location.pathname + '?' + str;
                    }

               }else{
                    location.href = $(this).parent('a').attr('href')
                }
            })
        })

        function reset() {
            location.href = location.pathname
        }

    </script>
    @stop