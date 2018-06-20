@extends('layouts.master')

@section('content')
    <div class="main container two-columns-left">
        <div class="row">
            <div class="col-md-2">
                @include('usercenter.partials.sidebar')
            </div>
            <div class="col-md-10">
                <div class="col-main account_center">
                    <div class="std">
                        <div style="margin:4px 0 0">
                            <div class="page-title">
                                <h2>My Orders</h2>
                            </div>
                            <div class="bgary bg-white bg-shadow radius4">
                                <div slot="header" class="clearfix">
                                    <input type="hidden" name="order_id" value="{{ $order->id }}">
                                    <span>订单基本信息</span>
                                    (<span class="<?php

                                    //如果是退货相关的 点击此按钮 弹出 买卖双方 退货对话
                                    if( $order->is_shipped && in_array( $order->order_status , [15,16,17,10,11,12,13,21] ) ){
                                        echo "refund_process";
                                    }

                                    ?>" style="color:red">{{ config('order.status')[$order->order_status]  }}</span>)
{{--*************************操作按钮 start*************************************************************---}}
                                    <div style="float: right;"   data-orderid="{{ $order->order_id  }}">
                                        {{-- 取消订单：下单 未付款 --}}
                                        @if(  $order->is_paid == false  && $order->payment_time == 0 && $order->order_status == 1  )
                                            <a class="cancel btn btn-default" href="javascript:;">取消</a>
                                            @if( $order->order_status !== 5  )
                                                <a href="{{route('checkout.payment.paypal',['order'=> encrypt( $order->order_id ) ])}}" class="btn btn-default goToPay">去支付</a>
                                            @endif
                                        @endif

                                        {{-- 退款 仅仅限于 已付款 未发货 24小时内可以申请退款 这时候即使订货了 也可以及时退回  --}}
                                        {{--@if( $order->is_paid  && $order->is_shipped == 0 && $order->payment_time >0 && time() - $order->payment_time->timestamp <  3600*24   )--}}
                                            {{--<a class="refund  btn btn-default" href="javascript:;">退款</a>--}}
                                        {{--@endif--}}

                                        {{-- 退货 已收到货物 需要接入物流api实时监测是否已签收 不满意 7天内 申请退货 退货完成后退款 --}}
                                        {{--@if( $order->is_paied && $order->status == 9 )--}}
                                            {{--<a class="refund_return  btn btn-default" href="javascript:;"> 退货 </a>--}}

                                            {{-- 已收到货 对订单进行评价 --}}
                                            {{--<a href="" class="btn btn-primary">评价</a>--}}
                                        {{--@endif--}}
                                    </div>
{{--*************************操作按钮 end*************************************************************---}}
                                </div>

                                <section class="order_basic_info">
                                    <div class="row mar-b10">
                                        <div class="col-md-4">
                                            <span class="w80 label666">订单号:</span> <span>{{$order->order_id}}</span>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="w80 label666">订单金额:</span> <span><b>{{$order->currency .' '. $order->amount_current_currency}}</b></span>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="w80 label666">付款方式:</span> <span>{{ $order->payment_gateway  }}</span>
                                        </div>
                                    </div>

                                    <div class="row mar-b10">
                                        <div class="col-md-4"><span class="w80 label666">订单状态:</span> <span> {{ config('order.status')[$order->order_status]  }} </span></div>
                                        <div class="col-md-4"><span class="w80 label666">货币:</span> <span> {{$order->currency}} </span></div>
                                        <div class="col-md-4"><span class="w80 label666">下单时间:</span> <span>2018-05-23</span></div>
                                    </div>

                                    @if( $order->is_shipped )
                                        <div class="row mar-b10">
                                            <div class="col-md-4"><span class="w80 label666">发货方式:</span> <span> {{ $order->delivery->delivery  }} </span></div>
                                            <div class="col-md-4"><span class="w80 label666">追踪单号:</span> <span>{{ $order->delivery->tracking_number  }}</span></div>
                                            <div class="col-md-4"><span class="w80 label666">发货时间:</span> <span>{{ $order->delivery->created_at  }}</span></div>
                                        </div>
                                    @endif
                                </section>

                                {{--*****************************订单状态********************************************--}}
                                <section class="order_status_box mar-t20">

                                    <h4>Order Status</h4>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($order->operation as $row)
                                                <tr>
                                                    <td>{{ explode(' ',$row->created_at)[0] }}</td>
                                                    <td>{{ explode(' ',$row->created_at)[1] }}</td>
                                                    <td>{{$row->order_status_label}}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </section>

                                <section class="shipping_info_box mar-t20">
                                @if( $order->is_shipped )
                                    <h4>Shipping Info</h4>
                                    <div class="mar-b10">
                                        <span class="w80 label666">收货人:</span> <span>{{ $order->address->name  }}</span>
                                    </div>
                                    <div class="mar-b10">
                                        <span class="w80 label666">收货地址:</span> <span>{{ $order->address->street . ' ,' .$order->address->city .  ' ,' .$order->address->state . ' ,' .$order->address->country  }}</span>
                                    </div>
                                    <div>
                                        <span class="w80 label666">收货人电话:</span> <span>{{ $order->address->telephone }}</span>
                                    </div>
                                @endif
                                </section>

                                <section class="product_info_box mar-t20">
                                    <h4>Product Info</h4>
                                    <table class="table">
                                        <thead class="bg-greyf9f8f7">
                                        <tr >
                                            <th width="300">Items</th>
                                            <th>Unit Price</th>
                                            <th>Qty(pcs)</th>
                                            <th>SubTotal</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @foreach( $order->product as $item )
                                            <tr>
                                                <td> <div class="media">
                                                        <div class="media-left">
                                                            <a href="#">
                                                                <img class="media-object" src="{{$item->pic_path}}" alt="...">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5 class="media-heading">{{ $item->title  }}</h5>
                                                            <div>
                                                                @foreach( json_decode($item->options)->selectedItemLocale as $key=>$value )
                                                                    <span>
                                                                        @if( $loop->first  == false )
                                                                            ,
                                                                        @endif
                                                                        {{ $key .':'.$value  }}
                                                                    </span>
                                                                @endforeach
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td> {{ $order->currency . ' ' . $item->unit_price_current_currency  }} </td>
                                                <td> {{ $item->quantity  }}</td>
                                                <td>{{ $order->currency . ' ' . $item->subtotal_current_currency  }}</td>

                                                <td>
                                                    {{--*********************如果有退款 退货相关则显示 如果没有则按订单状态显示***********************--}}
                                                    @if( in_array( $item->id , $order->refund()->pluck('item_id')->toArray()  ) )
                                                        <?php
                                                            $refund = $item->refund()->get()->first();
                                                        ?>
                                                        <span> {{   $refund->refund_status == 1 ? '已退款' : '退款中'   }}  </span>

                                                        {{--其他状态还有 退货审批、 退货审批通过 、退货中、已收到退货、退款中 --}}

                                                    @else
                                                        <span>{{  config('order')['status'][$order->order_status]  }}</span>

                                                    @endif

                                                </td>

                                                <td data-orderid="{{$order->order_id}}"
                                                    data-itemid="{{ $item->id }}"
                                                    data-amount="{{$item->subtotal_current_currency}}"
                                                    data-currency="{{$order->currency}}"
                                                >

                                                    {{-- 退款 仅仅限于 已付款 未发货 24小时内可以申请退款 这时候即使订货了 也可以及时退回  --}}
                                                    @if(
                                                        $order->is_paid
                                                        && $order->is_shipped == 0
                                                        && $order->payment_time >0
                                                        && time() - strtotime($order->payment_time) <  3600*24
                                                        && in_array( $item->id , $order->refund()->pluck('item_id')->toArray()  ) == false
                                                    )
                                                        <a class="refund" href="javascript:;">退款 </a>
                                                    @endif

                                                    {{--确认收货 用户点击确认收货更改订单状态 从已发货改为已收货--}}
                                                    {{--@if( $order->order_status == 7 )--}}
                                                    {{--<a href="javascript:;" class="confirm-receipt">确认收货</a>--}}
                                                    {{--@endif--}}

                                                    {{-- 退货 已收到货物 需要接入物流api实时监测是否已签收 不满意 7天内 申请退货 退货完成后退款 --}}
                                                    @if( $order->is_paid  && in_array($order->order_status , [9 ])   )
                                                        <a class="refund_return" href="javascript:;"> 退货 </a>

                                                        {{-- 已收到货 对订单进行评价 --}}
                                                        {{--<a class="leave-comment" href="javascript:;">评价</a>--}}
                                                    @endif

                                                    {{-- 退货申请审批通过 11 买家填写退货物流信息 --}}
                                                    @if( $order->order_status == 11 )
                                                        <a href="javascript:;" class="fill-return-shipping-info">填写退货物流</a>
                                                    @endif

                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </section>

                                {{--***********************退款退货**************************************--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('sale::admin.saleorders.partials.refund-comments')
    {{--*************************************买家填写退货申请**********************************************************************--}}
    @include('usercenter.partials.goods-return-apply')


    {{--*************************************买家填写退货物流信息**********************************************************************--}}
    @include('usercenter.partials.goods-return-shipping')
@stop

@push('js-stack')

    <?php $locale = locale(); ?>
    <script>
        $(function(){

            $('.cancel').click(function(){
                var _this = this;
                $.post(
                    route('frontend.order.cancel',{order:$(this).parent().data('orderid') }),
                    {_token:'{{csrf_token()}}'}
                ).then(function(res){
                    if(res.code == 0){
                        $(_this).text('已取消')
                    }
                })
            });

            // $('.refund').click(function(){
            //     $.post(route('frontend.order.refund',{order:$(this).parent().data('orderid')})).then(function(){  })
            // });
            //
            // $('.refund_return').click(function(){
            //     $.post(route('frontend.order.refund_return',{order:$(this).parent().data('orderid')})).then(function(){  })
            // })

            var orderid = $('[name="order_id"]').val();
            $('.refund_process').click(function(){
                $('#refund-comments').modal('show');
            });

            //alix start
            //退款 卖家未发货的情况
            $('.refund').click(function(){
                $.post(
                    route('frontend.order.apply.refund',{
                        order:$(this).parent().data('orderid'),
                    }),
                    {
                        itemid:$(this).parent().data('itemid'),
                        amount:$(this).parent().data('amount'),
                        currency:$(this).parent().data('currency'),
                        _token:'{{csrf_token()}}'
                    }
                ).then(function(){ alert('退款申请成功');location.reload(); })
            });

            var formData = new FormData();

            //退货
            $('.refund_return').click(function(){
                var _this = this;
                var orderid = $(_this).parent().data('orderid');
                var totalAmount = $(this).parent().data('amount');
                var currency = $(this).parent().data('currency');
                var item_id = $(this).parent().data('itemid');

                //请求订单详情 获取订单金额 反填
                $('#refund_apply_myModal .order_amount').html( currency + totalAmount  );
                $('#refund_apply_myModal').modal('show');

                $('#refund_apply_myModal .like-to-pay-seller').attr('max',totalAmount);

                $('#refund_apply_myModal').on('keyup','.like-to-pay-seller',function(){
                    if( Number(this.value) <= Number(totalAmount) && !!this.value ){
                        $('input[name="refund_amount"]').val( totalAmount - this.value );
                        var refund_amount = ( totalAmount - this.value ).toString();
                        $('#refund_apply_myModal  .refund_amount').text(  currency( refund_amount ).value   );
                        $('#refund_amount-error').hide()
                    }else{
                        $('#refund_apply_myModal  .refund_amount').text( '' );
                        $('#refund_amount-error').show()
                    }
                });

                //上传文件名字显示
                var files;
                var data = new FormData();
                $('[name="orderfile[]"]').change(function(){
                    files = $('input[name="orderfile[]"]')[0].files;
                    var namestr = '';
                    $.each(files,function(index,item){
                        data.append('orderfile[]' , item  );
                        namestr += item.name +'</br>' ;
                    });
                    $(this).next('span').html( namestr )
                });

                //是否收到货
                var has_received =  $('input[name="has_received_goods"]:checked').val();
                if( has_received !== undefined ){
                    $('input[name="has_received_goods_id"]').val(has_received);
                }

                $('input[name="has_received_goods"]').change(function(){
                    $('input[name="has_received_goods_id"]').val(  $('input[name="has_received_goods"]:checked').val()  );
                    $('#has_received_goods_id-error').hide();
                });

                $('#refund_apply_form').validate({
                    ignore:'',
                    //debug:true,
                    submitHandler: function(form)
                    {
                        data.append('_token' , '{{csrf_token()}}');
                        data.append('like_to_pay_seller' ,$('[name="like_to_pay_seller"]').val() ) ;
                        data.append('refund_amount',$('[name="refund_amount"]').val()  );
                        data.append('refund_reason',$('[name="refund_reason"]').val() );
                        data.append('item_id',item_id)

                        $.ajax({
                            type:'post',
                            url:route('frontend.order.return_apply',{order:orderid}),
                            contentType:false,
                            processData:false,
                            data:data
                        }).then(function(res){
                            $('#refund_apply_myModal').modal('hide');
                            location.reload()
                        })
                    }
                });

            });
            //退货物流填写
            $('.fill-return-shipping-info').click(function(){
                var _this = this;
                $('#return_shipping_modal').modal('show')
            });


        })
    </script>
@endpush
