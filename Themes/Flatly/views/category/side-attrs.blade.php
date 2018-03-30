<?php
    $baseurl =  url()->current();
     $org_strings = $query_strings = request()->all();
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
        <a class="list-group-item active" data-key="{{ $key  }}">
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
            @if( !empty($jiaoji1))
                <?php

                    $newParams = [];

                    $isAttrExsistInParams = array_key_exists( $key,$query_strings ) && strstr( $value , $query_strings[$key] );

                    if( !empty($query_strings) ){
                        if ( array_key_exists( $key,$query_strings ) ){
                            foreach ( $query_strings as $v1=>$v2 ){
                                if ( $v1 == $key  &&  !in_array( $value, explode('-',$v2) ) ){
                                    $v2 =  $v2.'-'.$value;
                                }

                                $newParams[$v1] = $v2;
                            }

                        }else{
                                $newParams =  array_merge( $query_strings,[$key=>$value] );
                        }
                    }else{
                        $newParams = [$key=>$value];
                    }

                    $url =  $baseurl.'?'.http_build_query( $newParams    );

                    //根据筛选条件 根据product__attr查询 筛选条件 得出产品集合 ids
                    $cat = \Modules\Blog\Entities\Category::find($catId);
                    if (empty($newParams)) {
                        //没有筛选参数时 只显示当前分类下的所有产品
                        $products = $cat->products()->paginate(24);
                    } else {
                        //根据筛选条件 根据product__attr查询 筛选条件 得出产品集合 ids
                        $result = [];
                        $firstVal = reset($newParams);
                        while (!!list($v1, $v2) = each($newParams)) {

                            if (strstr($v2, '-')) {
                                $words = explode('-', $v2);
                                static $query;
                                $i = 0;
                                while ($i < count($words)) {
                                    if ($i == 0) {
                                        $query = \Modules\Product\Entities\Attr::where([
                                            'attr_key' => $v1,
                                            ['value', 'like', '%' . $words[0] . '%']
                                        ]);
                                    } else {
                                        $query = $query->orWhere([
                                            'attr_key' => $v1,
                                            ['value', 'like', '%' . $words[$i] . '%']
                                        ]);
                                    }
                                    $i++;
                                }

                                $newPdcIds = $query->pluck('product_id')->toArray();
                            } else {
                                $newPdcIds = \Modules\Product\Entities\Attr::where([
                                    'attr_key' => $v1,
                                    ['value', 'like', '%' . $v2 . '%']
                                ])->pluck('product_id')->toArray();
                            }
                            $result = $v2 == $firstVal ? $newPdcIds : array_intersect($result, $newPdcIds);
                        }

                        //获得查询的产品结果
                        $products = \Modules\Product\Entities\Product::whereIn('id', $result)->whereHas(
                            'cats',function($q) use($catId) {
                            $q->where('category_id',$catId);
                        }
                        )->paginate(24);
                    }

                    ?>
                <a  data-key="{{ $key }}" data-value="{{$value}}"
                    _href="{{    $products->total() > 0  ?  $url : 'javascript:;'}} " class="list-group-item {{ $products->total() == 0  ? 'disabled' : ''  }}">

                    <input {{  $products->total()  == 0 ? 'disabled' : ''  }} type="checkbox" class="selecter" <?php
                            if( isset( $query_strings[$key] )  ){
                                echo   in_array( $value, explode( '-', $query_strings[$key] ) ) ? 'checked' : '';
                            }
                        ?>> <span> {{  $option[locale()]  }}</span> </a>
            @endif
        @endforeach
    </div>
    @endif
@endforeach

@section('scripts')
    <script>
        var query_string = <?php echo json_encode( $query_strings );?>   ;

        $(function(){

            $('#layerd-filters input[type="checkbox"]').unbind('change').on('change' ,function (event) {

                var event = event || window.event;
                if(event.preventDefault){
                    event.preventDefault();
                    event.stopPropagation();
                }

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
                    location.href = $(this).parents('a.list-group-item').attr('_href')
                }
            })
        });

        $('#layerd-filters a.list-group-item span').click(function () {
            $(this).siblings('input').trigger('click');
        });

        function reset() {
            location.href = location.pathname
        }

    </script>
    @stop