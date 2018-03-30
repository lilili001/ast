@extends('layouts.master')

@section('title')
    product view | @parent
@stop

@section('content')
    {!! Theme::style('css/easyzoom.css') !!}
    <div class="row page product-detail-page">
        <div class="col-md-12 product-view">
            <div class="row top">
                <div class="picScroll-top">
                    @if( count($product->featured_images->toArray()) >=5 )
                        <div class="hd">
                            {{--<a class="next"><span class="glyphicon glyphicon-menu-down"></span></a>--}}
                            {{--<a class="prev"><span class="glyphicon glyphicon-menu-up"></span></a>--}}
                        </div>
                    @endif
                    <div class="bd">
                        <div><a class="prev"><span class="glyphicon glyphicon-menu-up"></span></a></div>
                        <ul class="thumbnails picList">
                            @foreach($product->featured_images as $featuredImage)
                                <li>
                                    <div class="pic">
                                        @if(count( $product->featured_images->toArray() )>0)
                                            <a href="{{$featuredImage->path}}"
                                               data-standard="@thumbnail($featuredImage->path, 'productThumb')">
                                                <img src="@thumbnail($featuredImage->path, 'mediumThumb')" alt=""/>
                                            </a>
                                        @else
                                            <a href="{{asset('/assets/images/comming.jpg')}}">
                                                <img src="asset('/assets/images/comming.jpg')" alt=""/>
                                            </a>
                                        @endif

                                    </div>
                                </li>
                            @endforeach
                        </ul>
                        <div><a class="next"><span class="glyphicon glyphicon-menu-down"></span></a></div>
                    </div>
                </div>
                <div class="zoom-wrap">
                    <div class="easyzoom easyzoom--adjacent easyzoom--overlay easyzoom--with-thumbnails w470 ">


                        @if(count( $product->featured_images->toArray() )>0)
                            <a href="{{$product->featured_images->first()->path}}"
                               data-standard="@thumbnail($featuredImage->path, 'productThumb')">
                                @if( !empty($product->featured_images) )
                                    <img class="main-img"
                                         src="@thumbnail($product->featured_images->first()->path, 'productThumb')"
                                         alt="" width="640"
                                         height="360"/>
                                @endif
                            </a>
                        @else
                            <a>
                                <img width="380" src="{{  asset('/assets/images/comming.jpg') }}" alt=""/>
                            </a>
                        @endif
                    </div>
                </div>

                <div class="pull-left product_info">
                    <h1>{{$product->title}}</h1>
                    <div>Item Code:sdfff</div>
                    <div>Stock:{{ $product->stock  }}</div>
                    <div class="price">{{$product->price}}</div>

                    {{--sku attrs start--}}
                    <?php
                    $productId = $product->id;
                    $attrs = \Modules\Product\Entities\Attr::where([
                        'product_id' => $productId,
                        'is_for_sku' => 1
                    ])->select('attr_key', 'value')->get()->toArray();
                    ?>

                    @foreach( $attrs as $key=>$attr )
                        <div class="{{$attr['attr_key']}}_option_box option_box">
                            <?php
                            $query = \Modules\Attribute\Entities\Attribute::where('key', $attr['attr_key']);
                            $attr1 = $query->with('translations')->get()->first();
                            ?>
                            <label>{{$attr1->name}}</label>
                            <?php
                            $value = $attr['value'];
                            $value = mb_ereg_replace('^(\[)+', '', $value);
                            $value = mb_ereg_replace('(\])+$', '', $value);
                            $value = mb_ereg_replace('(\")+', '', $value);
                            $values = explode(',', $value);
                            $swatchColors = json_decode($product->swatch_colors, true);
                            $locale = locale();

                            $attrSkus = $product->sku->pluck('settings')->toArray();

                            ?>
                            <ul>
                                @foreach($values as $keyv=>$val)
                                    @if( $attr['attr_key'] == 'color' &&  isset( $swatchColors[$val] ) )
                                        <li class="option" title="{{$val}}"  data-attr_key="{{  $attr['attr_key']  }}" data-value="{{ $val  }}" ><a class="none-padding">
                                                <img width="30"
                                                     src="{{  $swatchColors[$val]['filepath']  }}"
                                                     alt=""> </a></li>
                                    @else
                                        <?php
                                        $attribute_options = $query->pluck('options')->first();
                                        ?>
                                        <li class="option" data-attr_key="{{  $attr['attr_key']  }}" data-value="{{ $val  }}"><a>{{$attribute_options[$val][$locale]}}</a></li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    @endforeach

                    <div class="option_box qty">
                        <label for="">数量</label>
                        <div class="pull-left qty_div">
                                <span class="glyphicon glyphicon-minus qty-action"></span>
                                <input type="number" placeholder="1" class="qty">
                                <span class="glyphicon glyphicon-plus qty-action" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    {{--sku attrs end--}}
                    <div><a href="javascript:;" class="btn  add_to_cart_btn"><span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a></div>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
    </div>
@stop

@section('scripts')
    {!! Theme::script('js/easyzoom.js') !!}
    {!! Theme::script('lib/superslide/jquery.SuperSlide.2.1.1.js') !!}

    <script>
        $(function () {

            var $easyzoom = $('.easyzoom').easyZoom();
            // Setup thumbnails example
            var api1 = $easyzoom.filter('.easyzoom--with-thumbnails').data('easyZoom');
            $('.thumbnails').on('click', 'a', function (e) {

                $('.thumbnails li').removeClass('border');
                $(this).parents('li').addClass('border');

                var $this = $(this);
                e.preventDefault();
                // Use EasyZoom's `swap` method
                api1.swap($this.data('standard'), $this.attr('href'));
            });
            jQuery(".picScroll-top").slide({
                titCell: ".hd ul",
                mainCell: ".bd ul",
                autoPage: true,
                effect: 'top',
                autoPlay: false,
                scroll: 1,
                vis: 5,
                easing: 'easeOutCirc',
                delayTime: 400,
                pnLoop: false,
                trigger: 'click',
                mouseOverStop: true
            });


            var $attrSkus = <?php echo !empty($attrSkus) ?  json_encode( $attrSkus ) : 'null';?>;
            var $attrs = <?php echo !empty($attrs) ? json_encode( $attrs ) : 'null' ;?>;

            $attrs = _.map( $attrs,function(item,index){
                item['value'] = JSON.parse( item['value'] );
                return item;
            });

            if( $attrSkus== 'null' ) return;
            var exsist_skus = _.filter( $attrSkus,function(item){
                return item.stock != 0;
            });

            console.log(exsist_skus);

            var selectedItem = {};

            $('.option_box .option').click(function(){
                $(this).siblings('li').removeClass('on');
                $(this).addClass('on');
                var key = $(this).data('attr_key');
                var value = $(this).data('value');
                selectedItem[key] = value;
                //foreach others
                var $otherOptionBox = $('.option_box').not('.'+key+'_option_box');
                $otherOptionBox.find('.option').each(function(index,item){
                    $(item).removeClass('disabled');
                    var key1 = $(item).data('attr_key');
                    var value1 = $(item).data('value');
                    var temp = {};
                    temp[key1] = value1;
                    var target = _.extend( selectedItem,temp );
                    console.log(target)
                     var res = _.where( exsist_skus, target );
                     if(res.length == 0){
                         $(item).addClass('disabled');
                     }

                });
            });
        })
    </script>
@stop

