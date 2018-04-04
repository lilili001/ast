@extends('layouts.master')

@section('title')
    product view | @parent
@stop

@section('content')
    <?php
        

    ?>
    {!! Theme::style('css/easyzoom.css') !!}
    <div class="row page product-detail-page">
        <div class="col-md-12 product-view">
            <div class="top">
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
                    <div class="">Stock: <span class="stock">{{ $product->stock  }}</span></div>
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
                                    <?php
                                    $attribute_options = $query->pluck('options')->first();
                                    ?>

                                    @if( $attr['attr_key'] == 'color' &&  isset( $swatchColors[$val] ) )
                                        <li class="option" title="{{$val}}"
                                            data-attr_key="{{  $attr['attr_key']  }}"
                                            data-locale_attr_key="{{$attr1->name}}"
                                            data-locale_val="{{ $attribute_options[$val][$locale] }}"
                                            data-value="{{ $val  }}"><a class="none-padding">
                                                <img width="30"
                                                     src="{{  $swatchColors[$val]['filepath']  }}"
                                                     alt=""> </a>
                                            <b></b></li>
                                    @else
                                        <li class="option" data-attr_key="{{  $attr['attr_key']  }}"
                                            data-locale_attr_key="{{$attr1->name}}"
                                            data-value="{{ $val  }}"
                                            data-locale_val="{{$attribute_options[$val][$locale]}}">
                                            <a>{{$attribute_options[$val][$locale]}}</a><b></b>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    @endforeach

                    <div class="option_box">
                        <label for="">数量</label>
                        <div class="pull-left qty_div">
                            <span data-action="decrease" class="glyphicon glyphicon-minus qty-action pointer"></span>
                            <input type="number" id="quantity" class="qty" value="1">
                            <span data-action="increase" class="glyphicon glyphicon-plus qty-action pointer"
                                  aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    {{--sku attrs end--}}
                    <div class="error" style="display: none">请选择属性</div>
                    <div class="action-btn"><a href="javascript:;" class="btn  add_to_cart_btn" id="addCartBtn"><span
                                    class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a></div>
                </div>
                <div class="clearfix"></div>

            </div>
            <!--below content-->
            <div class="bellow">

                <div class="slideTxtBox">
                    <div class="hd">
                        <ul>
                            <li>详情</li>
                            <li>评论</li>
                            <li>运费说明</li>
                        </ul>
                    </div>
                    <div class="bd">
                        <div class="box">
                            <div class="pic">
                                @foreach($product->featured_images as $featuredImage)
                                    <div class="pic">
                                        @if(count( $product->featured_images->toArray() )>0)

                                            <img src="{{$featuredImage->path}}" alt=""/>
                                        @endif
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="box">review</div>
                        <div class="box">
                            Payment Methods:
                            FECSHOP.com accepts PayPal, Credit Card, Western Union and Wire Transfer as secure payment
                            methods:

                            Global:

                            1. PayPal

                            1) Login To Your Account or use Credit Card Express.
                            2) Enter your Card Details, the order will be shipped to your PayPal address. And click
                            "Submit".
                            3) Your Payment will be processed and a receipt will be sent to your email inbox.

                            2. Credit Card

                            1) Choose your shipping address OR create a new one.
                            2) Enter your Card Details and click "Submit".
                            3) Your Payment will be processed and a receipt will be sent to your email inbox.
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
@stop

@section('scripts')
    {!! Theme::script('js/easyzoom.js') !!}
    {!! Theme::script('lib/superslide/jquery.SuperSlide.2.1.1.js') !!}

    <script>
        $(function () {

            jQuery(".slideTxtBox").slide({trigger: "click", pnLoop: false});

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

            var $attrSkus = <?php echo !empty($attrSkus) ? json_encode($attrSkus) : 'null';?>;
            var $attrs = <?php echo !empty($attrs) ? json_encode($attrs) : 'null';?>;

            $attrs = _.map($attrs, function (item, index) {
                item['value'] = JSON.parse(item['value']);
                return item;
            });

            if ($attrSkus == 'null') return;
            var exsist_skus = _.filter($attrSkus, function (item) {
                return item.stock != 0;
            });

            var selectedItem = {};
            var selectedItemLocale = {};

            $('.option_box .option').click(function () {
                if ($(this).hasClass('disabled')) return;

                var key = $(this).data('attr_key');
                var value = $(this).data('value');
                selectedItem = _.omit(selectedItem, key);

                var keyLocale = $(this).data('locale_attr_key');
                var valueLocale = $(this).data('locale_val');
                selectedItemLocale = _.omit(selectedItemLocale, keyLocale);

                if ($(this).hasClass('on')) {
                    $(this).removeClass('on');
                } else {
                    $(this).siblings('li').removeClass('on');
                    $(this).addClass('on');
                    selectedItem[key] = value;
                    selectedItemLocale[keyLocale] = valueLocale;
                }

                var $otherOptionBox = $('.option_box').not($(this).parents('.option_box'));

                var res = _.where(exsist_skus, selectedItem);

                //除了当前选项 其他项 根据当前所选进行筛选 确定是否可选
                $otherOptionBox.find('.option').each(function (index, item) {
                    var curGoup = _.groupBy(res, $(item).data('attr_key'));
                    var keys = _.keys(curGoup);

                    if (keys.indexOf($(item).data('value')) == -1) {
                        $(item).addClass('disabled')
                    } else {
                        $(item).removeClass('disabled');
                    }
                });
                if (res.length == 1 && _.keys(selectedItem).length == $attrs.length) {
                    $('.error').hide();
                    var url = '/{{ locale() . '/'. $product->id . '/getSku' }}';

                    $.post(url, {
                        _token: '{{ csrf_token()  }}',
                        qty: $('#uantity').val(),
                        options: selectedItem
                    }).then(function (res) {
                        $('.price').text(res.result.price);
                        $('.stock').text(res.result.stock);
                    });
                }
            });

            $('.qty-action[data-action="increase"]').click(function () {
                var oldV = Number($(this).siblings('.qty').val());
                oldV++;
                $(this).siblings('.qty').val(oldV)
            })
            $('.qty-action[data-action="decrease"]').click(function () {
                var oldV = Number($(this).siblings('.qty').val());
                oldV = oldV > 1 ? oldV-- : oldV;
                $(this).siblings('.qty').val(oldV);
            });

            $('#addCartBtn').click(function () {
                var isLogin = '{{Auth::check() ? true : false }}';
                if (!isLogin) {
                    location.href = "/auth/login";
                    return;
                }

                if (_.keys(selectedItem).length !== 4) {
                    $('.error').show();
                    return;
                }
                var url = '/{{ locale().'/'.$product->id.'/addToCart'  }}';
                $.post(url, {
                    _token: '{{ csrf_token()  }}',
                    selectedItemLocale:selectedItemLocale,
                    qty: $('.qty').val(),
                    options: selectedItem
                }).then(function (res) {
                    if (res.code == 0) {
                        location.href = "/cart";
                    }
                });

            });
        })
    </script>
@stop

