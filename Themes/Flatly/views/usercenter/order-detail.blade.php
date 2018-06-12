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
                                    if( in_array( $order->order_status , [15,16,17,10,11,12,13,21] ) ){
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
                                        @if( $order->is_paid  && $order->is_shipped == 0 && $order->payment_time >0 && time() - $order->payment_time->timestamp <  3600*24   )
                                            <a class="refund  btn btn-default" href="javascript:;">退款</a>
                                        @endif

                                        {{-- 退货 已收到货物 需要接入物流api实时监测是否已签收 不满意 7天内 申请退货 退货完成后退款 --}}
                                        @if( $order->is_paied && $order->status == 9 )
                                            <a class="refund_return  btn btn-default" href="javascript:;"> 退货 </a>

                                            {{-- 已收到货 对订单进行评价 --}}
                                            <a href="" class="btn btn-primary">评价</a>
                                        @endif
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

                                @if( $order->is_shipped )
                                    <hr>
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
                                <hr>
                                <h4>Product Info</h4>
                                <table class="table">
                                    <thead>
                                    <tr >
                                        <th width="280">Items</th>
                                        <th>Unit Price</th>
                                        <th>Qty(pcs)</th>
                                        <th>SubTotal</th>
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
                                                        <dl>
                                                            @foreach( json_decode($item->options)->selectedItemLocale as $key=>$value )
                                                                <dd>{{ $key .':'.$value  }}</dd>
                                                            @endforeach
                                                        </dl>
                                                    </div>
                                                </div>  </td>
                                            <td> {{ $order->currency . ' ' . $item->unit_price_current_currency  }} </td>
                                            <td> {{ $item->quantity  }}</td>
                                            <td>{{ $order->currency . ' ' . $item->subtotal_current_currency  }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('sale::admin.saleorders.partials.refund-comments')

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

            $('.refund').click(function(){
                $.post(route('frontend.order.refund',{order:$(this).parent().data('orderid')})).then(function(){  })
            });

            $('.refund_return').click(function(){
                $.post(route('frontend.order.refund_return',{order:$(this).parent().data('orderid')})).then(function(){  })
            })

            var orderid = $('[name="order_id"]').val();
            $('.refund_process').click(function(){
                console.log(123)
                $('#refund-comments').modal('show');
            });
        })
    </script>
@endpush
