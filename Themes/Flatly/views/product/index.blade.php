@extends('layouts.master')

@section('title')
    {{ $product->title }} | @parent
@stop

@section('meta')
    <meta name="description" content="{{ $product->meta_description }}" />
@stop

@section('content')

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
                                               data-standard="@thumbnail($featuredImage->path, 'largeThumb')">
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
                               data-standard="@thumbnail($featuredImage->path, 'largeThumb')">
                                @if( !empty($product->featured_images) )
                                    <img class="main-img"
                                         src="@thumbnail($product->featured_images->first()->path, 'largeThumb')"
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

                    <div class="row">
                    <div class="col-md-6">
                        <span id="product_reviews"></span> <span class="product_review_count">(<a href="#review-box">{{ count($reviews) }}</a>)</span>
                    </div>
                        <div class="col-md-6 pull-right">
                            <img class="pull-right" src="{{'/assets/images/free_ateration_en_a0f9a23325aaee0b.png'}}" alt="">
                        </div>
                    </div>


                    <div>Item Code:sdfff</div>
                    <div class="">Stock: <span class="stock">{{ $product->stock  }}</span></div>
                    <hr>
                    <div class="price">
                        <span class="multiSign"> {{ json_decode( setting('currency::current-currency') )[0] . $allowdCurrencies[getCurrentCurrency()]['symbol'] }} </span>
                        <span class="multiPrice" data-price="{{ $product->price  }}">{{$product->price * $allowdCurrencies[getCurrentCurrency()]['rate'] }}</span>
                    </div>

                    {{--sku attrs start--}}
                    <div class="product_options">
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
                            <ul attr="{{ $attr['attr_key']  }}">
                                @foreach($values as $key=>$val)
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
                                            <a  attr="{{$attr['attr_key']}}" value="{{ $val}}" >{{$attribute_options[$val][$locale]}}</a><b></b>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    @endforeach
                    </div>
                    <div class="option_box qty_wrap">
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
                    <div class="action-btn mar-t20">
                        <a href="javascript:;" class="btn  add_to_cart_btn" id="addCartBtn">
                            {{--<span class="glyphicon glyphicon-shopping-cart"></span>--}}
                            Add To Cart</a>
                        <a href="javascript:;" class="btn addFavoriateBtn"> <span class="glyphicon glyphicon-heart {{  user()->hasFavorited($product) ? 'active' : ''  }} "></span>
                            <input type="hidden" name="favorite_count" value="{{$favorite_count}}">
                            <span class="favorite_count"> {{  user()->hasFavorited($product) ? '('.$favorite_count.')'  : 'Add to Favorites'  }}  </span> </a>
                    </div>
                </div>
                <div class="clearfix"></div>

            </div>
            <!--below content-->
            <div class="bellow">
                <div class="bought mar-t20">
                <dl>
                    <dt><span>CUSTOMERS WHO BOUGHT THIS ITEM ALSO BOUGHT</span></dt>
                <div class="clearfix"></div>

                        @foreach($relatedProducts as $related)
                            <dd class="{{ $loop->first  ? 'first' : ''  }}">
                                <div class="imgbox">
                                <a rel="nofollow" href="{{ URL::route($currentLocale . '.product.slug', [$related->slug])}}">
                                    <img dir="ltr" width="200px" src="@thumbnail( $related->featured_images->first()->path, 'mediumThumb')" alt="{{$related->title}}" data-track-product-id="{{$related->id}}" data-track-product-list="{{$related->title}}" data-track-product-position="2"></a>
                                 </div>
                                <div class="title pad-t6"><a rel="nofollow" title="{{$related->title}}" href="{{ URL::route($currentLocale . '.product.slug', [$related->slug])}}">{{ $related->title  }}</a></div>
                                <a href="{{ URL::route($currentLocale . '.product.slug', [$related->slug]) }}" class="price" >
                                    <span class="multiSign">{{ json_decode( setting('currency::current-currency') )[0] . $allowdCurrencies[getCurrentCurrency()]['symbol'] }}</span>
                                    <span class="multiPrice" data-price="{{$related->price}}">{{$related->price * $allowdCurrencies[getCurrentCurrency()]['rate'] }}</span>
                                </a>
                            </dd>
                        @endforeach

                <div class="clearfix"></div>
                </dl>
                </div>

                 <div class="bd mar-t20">
                        <div class="box">
                            <div class="title-bar-s">
                                <h2>Description:</h2>
                            </div>
                            {!! $product->description !!}
                            <div class="pic">
                                {{--@foreach($product->featured_images as $featuredImage)--}}
                                    {{--<div class="pic">--}}
                                        {{--@if(count( $product->featured_images->toArray() )>0)--}}

                                            {{--<img src="{{$featuredImage->path}}" alt=""/>--}}
                                        {{--@endif--}}
                                    {{--</div>--}}
                                {{--@endforeach--}}
                            </div>
                        </div>
                        <div class="box review clearfix" id="review-box">
                            <div class="title-bar-s">
                                <h2>Review:</h2>
                            </div>

                            @if( count( $reviews ) == 0 )
                                暂无评论,下单发表评论
                            @endif

                            @if( isset($reviews) )
                                @foreach($reviews as $review)
                                    @if( $loop->first == false )
                                    <hr>
                                    @endif
                                <div class="w-review" id="reply-{{$review->id}}">

                                    <div class="review-title">
                                        <span>by</span> <b>{{ getUser($review->user_id)->first_name . ' '. getUser($review['user_id'])->last_name  }}</b>
                                        <span class="score" data-score="{{$review->goods_score}}"></span>
                                        <span class="pull-right">{{$review->created_at}}</span>
                                    </div>

                                    <div class="review-detail">
                                        {{$review->content}}
                                        <?php
                                        $appraise_img_path =  mb_split(';',$review->appraise_img_path);
                                        ?>
                                        <div class="row">
                                            <div class="col-md-12">
                                                @foreach($appraise_img_path as $key => $img)
                                                    <a class="review_img" href="/images/{{$img}}" data-lightbox="roadtrip">
                                                        <img width="80" src="/images/{{$img}}" alt=""></a>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>

                                    {{--评论回复框--}}
                                    @include('product.partials.reply',[
                                        'reply_count' => count( $review->replies ) ,
                                        'item' => $review,
                                        'reviewId' => $review->id ,
                                        'to_user_id' => $review->user_id,
                                        'replyId' => 0,
                                        'item_type' => 'product_review'
                                     ])

                                    {{-- 如果有子评论则再次循环 最多展示2级评论 --}}

                                    @if( !empty( $review->replies ) )
                                        <div class="comment-box padding2030">
                                        @foreach( $review->replies as $reply )

                                            @if($loop->first )
                                            @else
                                                <hr>
                                            @endif

                                            <div class="w-review review-replies" id="reply-{{$reply->id}}">
                                                <div class="review-title">
                                                    <span>by</span> <b>{{ getUser($reply->user_id)->first_name . ' '. getUser($reply->user_id)->last_name  }}</b>

                                                    @if( $reply->to_user_id != $reply->user_id )
                                                        to
                                                    <b>{{ getUser($reply->to_user_id)->first_name . ' '. getUser($reply->to_user_id)->last_name  }}</b>
                                                    @endif
                                                    <span class="pull-right">{{$reply->created_at}}</span>
                                                </div>

                                                <div class="review-detail">
                                                    {{$reply['content']}}
                                                </div>

                                                {{--评论回复框--}}
                                                @include('product.partials.reply',[
                                                    'reviewId' => $review->id ,
                                                    'item' => $reply,
                                                    'replyId' => $reply->id,
                                                    'to_user_id' => $reply->user_id,
                                                    'item_type' => 'product_review_apply'
                                                ])
                                            </div>

                                        @endforeach
                                        </div>
                                    @endif

                                </div>

                                @endforeach

                            @endif

                        </div>

                        <div class="box">
                            <div class="title-bar-s mar-t20">
                                <h2>Payment Methods:</h2>
                            </div>

                            FECSHOP.com accepts PayPal, Credit Card, Western Union and Wire Transfer as secure payment
                            methods:

                            Global: </br>

                            1. PayPal </br>

                            1) Login To Your Account or use Credit Card Express. </br>
                            2) Enter your Card Details, the order will be shipped to your PayPal address. And click
                            "Submit".</br>
                            3) Your Payment will be processed and a receipt will be sent to your email inbox.</br>

                            2. Credit Card</br>

                            1) Choose your shipping address OR create a new one.</br>
                            2) Enter your Card Details and click "Submit".</br>
                            3) Your Payment will be processed and a receipt will be sent to your email inbox.
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

            //jQuery(".slideTxtBox").slide({trigger: "click", pnLoop: false});

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

            var selectedItemLocale = {};
            var selectedObj = {};
            //1. 选择一个属性 color
            $('.product_options li').click(function () {
                if ($(this).children('a').hasClass('no_active')) return;

                $(this).siblings().removeClass('on');
                // $(this).siblings('li').children('a').removeClass('current');

                //获取选中的属性
                var attr = $(this).children('a').attr('attr');
                var value = $(this).children('a').attr('value');

                var keyLocale = $(this).data('locale_attr_key');
                var valueLocale = $(this).data('locale_val');

                if ($(this).hasClass('on')) {
                    $(this).removeClass('on');
                    //$(this).children('a').removeClass('current');
                    //删除以选中元素
                    selectedObj = _.omit(selectedObj, attr);
                    selectedItemLocale = _.omit(selectedItemLocale, keyLocale);
                } else {
                    $(this).addClass('on');
                    //$(this).children('a').addClass('current');
                    selectedObj[attr] = value;
                    selectedItemLocale[keyLocale] = valueLocale;
                }

                //2.获取所有该color的数据
                $('ul').each(function (index, item) {
                    var curRowAttr = $(item).attr('attr');
                    var selectedObjNew = Object.assign({}, selectedObj);
                    selectedObjNew = _.omit(selectedObjNew, curRowAttr);

                    var lis = $(this).children('li');
                    lis.children('a').removeClass('no_active');
                    lis.each(function (index, item) {
                        var a = $(item).children('a');
                        var attr = a.attr('attr');
                        var value = a.attr('value');
                        selectedObjNew[attr] = value;
                        var res = _.where(exsist_skus, selectedObjNew);
                        if (res.length == 0) {
                            $(item).children('a').addClass('no_active')
                        }
                    });
                });

                if (_.keys(selectedObj).length == $attrs.length) {
                    $('.error').hide();
                    var url = '/{{ locale() . '/'. $product->id . '/getSku' }}';

                    $.post(url, {
                        _token: '{{ csrf_token()  }}',
                        qty: $('#uantity').val(),
                        options: selectedObj
                    }).then(function (res) {
                        $('.multiPrice').data('price', res.result.price);
                        $('.multiPrice').text(res.result.price * window.currencyRates[$.cookie('currency')]['rate']);
                        $('.stock').text(res.result.stock);
                    });
                }
            });

            //数量增减
            $('.qty-action[data-action="increase"]').click(function () {
                var oldV = Number($(this).siblings('.qty').val());
                oldV++;
                $(this).siblings('.qty').val(oldV)
            })
            $('.qty-action[data-action="decrease"]').click(function () {
                var oldV = Number($('#quantity').val());
                oldV = Number(oldV) > 1 ? oldV-1 : oldV;
                $('#quantity').val(oldV);
            });
            //加入购物车
            $('#addCartBtn').click(function () {
                var isLogin = '{{Auth::check() ? true : false }}';
                if (!isLogin) {
                    location.href = "/auth/login";
                    return;
                }

                if (_.keys(selectedObj).length !== 4) {
                    $('.error').show();
                    return;
                }
                var url = '/{{ locale().'/'.$product->id.'/addToCart'  }}';
                $.post(url, {
                    _token: '{{ csrf_token()  }}',
                    selectedObjLocale: selectedItemLocale,
                    qty: $('.qty').val(),
                    options: selectedObj
                }).then(function (res) {
                    if (res.code == 0) {
                        location.href = "/cart";
                    }
                });
            });

            //加入收藏夹
            $('.addFavoriateBtn').click(function(){
                $.ajax({
                    type:'post',
                    url:'{{route('product.addToFavorite')}}',
                    data:{
                        _token:'{{csrf_token()}}',
                        id:'{{ $product->id }}',
                        type:1
                    },
                    success:function(res){
                        if(res.result.attached.length == 0){
                            var favorite_count = $('.favorite_count').text() - 1;
                            $('.favorite_count').text('Add to Favoriate');
                            $('.addFavoriateBtn span.active').removeClass('active')
                        }else{
                            //var favorite_count = Number( $('.favorite_count').text() ) + 1;
                            $('.favorite_count').text( '('+res.result.attached.length+')'  );
                            $('.addFavoriateBtn span.glyphicon').addClass('active')
                        }
                    }
                })
            })

            //评论赞
            $('.thumbs i').click(function(){
                var item_type = $(this).parents('span.thumbs').data('item_type');
                var reviewId = $(this).parents('span.thumbs').data('review_id');
                var replyId = $(this).parents('span.thumbs').data('reply_id');
                var isUp = $(this).hasClass('up') ? 1 : 0;
                var _this = this;

                $(this).toggleClass('active');
                if( $(this).hasClass('active') ){
                    $(this).parent().siblings().children('i').removeClass('active')
                }

                var itemId = replyId !=0 ? replyId : reviewId;
                $.post('{{route('frontend.order.product_comment_vote')}}',{
                    _token:'{{csrf_token()}}',
                    item_type : item_type,
                    id : itemId,
                    up: isUp
                }).then(function(res){
                     location.reload()
                })
            })
        })
    </script>
@stop

@push('js-stack')
    <script src="{{mix('js/lib.js')}}"></script>
    <script>
        $(function(){

            $('.score').raty({
                readOnly: true,
                score: function(){
                    return $(this).data('score');
                },
                starOff:'{{Theme::url('images/star-off.png')}}',
                starOn:'{{Theme::url('images/star-on.png')}}',
                starHalf:'{{Theme::url('images/star-half.png')}}',
            });

            $('#product_reviews').raty({
                starOff:'{{Theme::url('images/star-off.png')}}',
                starOn:'{{Theme::url('images/star-on.png')}}',
                starHalf:'{{Theme::url('images/star-half.png')}}',
                readOnly:true,
                score:5
            });

            $('.reply123').click(function(){
                //$('.reply-form').hide();
                $(this).parent().next('.reply-form').toggle();
                return false;
            });

            $('.comment-count').click(function(){
                if($(this).data('reply_count') == 0) return;
                $('.reply-form').hide();
                $(this).parent().siblings('.comment-box').toggle();
            });

            /***************评论回复 任何登陆用户均可回复公开评论*************************/
            $('.comment-act').click(function(){
                var _this = this;
                $.ajax({
                    type:'post',
                    url:  route('frontend.order.review_reply_save'),
                    data:$(this).parent('form').serializeArray()
                }).then(function(res){
                    $(_this).parents('.reply-form').hide()
                });
                return false
            })

        });
    </script>
@endpush