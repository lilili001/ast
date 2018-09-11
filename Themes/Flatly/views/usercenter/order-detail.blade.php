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
                                    <h4>收货地址</h4>
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

                                @if( isset($tracking) && $tracking['meta']['code'] == 200 )
                                    <hr>
                                <section>
                                    <h4>物流信息</h4>

                                    <div>运单号：{{$tracking['data']['tracking_number']}} ,{{$tracking['data']['carrier_code']}} ,{{$tracking['data']['status']}} </div>
                                    <div>发货国家：{{$tracking['data']['original_country']}}, 收货国家：{{$tracking['data']['destination_country']}}</div>
                                    <div>{{$tracking['data']['updated_at']}} <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#shippingDetail">
                                            查看详情
                                        </button> </div>

                                    {{--alix start--}}
                                    <!-- Modal -->
                                    <div class="modal fade" id="shippingDetail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">物流追踪</h4>
                                          </div>
                                          <div class="modal-body">
                                              <table class="table table-bordered">
                                                  <thead>
                                                  <tr>
                                                      <th>日期</th>
                                                      <th>状态</th>
                                                      <th>信息</th>
                                                      <th>节点状态</th>
                                                  </tr>
                                                  </thead>
                                                  <tbody>
                                                  <?php
                                                  $origin_tracking_info = $tracking['data']['origin_info']['trackinfo'];
                                                  $destination_tracking_info = $tracking['data']['destination_info']['trackinfo'];

                                                  $packet_status = [
                                                  'pending' => '查询中',
                                                  'notfound' => '查询不到',
                                                  'transit' => '运输途中',
                                                  'pickup' => '到达待取',
                                                  'delivered' => '成功签收',
                                                  'undelivered' => '投递失败',
                                                  'exception' => 'exception',
                                                  'expired' => '运输过久'
                                                  ];

                                                  ?>

                                                  @if( !empty($origin_tracking_info)   )
                                                      @foreach( $origin_tracking_info as $origin_track )
                                                          <tr>
                                                              <td>{{$origin_track['Date']}}</td>
                                                              <td>{{ $origin_track['StatusDescription'] }}</td>
                                                              <td>{{ $origin_track['Details'] }}</td>
                                                              <td>{{ $packet_status[$origin_track['checkpoint_status']] }}</td>
                                                          </tr>
                                                      @endforeach
                                                  @endif

                                                  @if( !empty( $destination_tracking_info )  )
                                                      @foreach( $destination_tracking_info as $dest_track )
                                                          <tr>
                                                              <td>{{ $dest_track['Date']}}</td>
                                                              <td>{{ $dest_track['StatusDescription'] }}</td>
                                                              <td>{{ $dest_track['Details'] }}</td>
                                                              <td>{{ $dest_track['checkpoint_status'] }}</td>
                                                          </tr>
                                                      @endforeach
                                                  @endif
                                                  </tbody>
                                              </table>
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>

                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    {{--alix end--}}


                                </section>
                                @endif

                                <section class="product_info_box mar-t20">
                                    <hr>
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
                                                    <?php
                                                        $refund = $item->refund()->get()->first();
                                                        $return = $item->goods_return()->get()->first();
                                                    ?>
                                                    {{--如果有退款申请 并且无需退货 【退款申请,等待卖家审批】--}}
                                                    {{--如果有退款申请 并且无需退货 已退款 【已退款】--}}
                                                    {{--如果有退款申请 并且需退货 【退货申请,等待卖家审批】--}}
                                                    {{--如果有退款申请 并且需退货 卖家已审批 【卖家同意退货】  --}}
                                                    {{--如果有退款申请 已填写退货单【商品退货中】  --}}
                                                    {{--如果有退款申请 已填写退货单【已退款】  --}}

                                                    @if( !empty($refund) && $item->id == $refund->item_id
                                                        && $refund->need_return_goods == 0
                                                        && $refund->approve_status == 0
                                                        && $refund->refund_status == 0
                                                        )
                                                        退款申请中,等待卖家审批
                                                    @endif

                                                    @if(!empty($refund) && $item->id == $refund->item_id
                                                        && $refund->refund_status == 1 )
                                                        已退款
                                                    @endif

                                                    @if(!empty($refund) && $item->id == $refund->item_id
                                                     && $refund->need_return_goods == 1
                                                     && $refund->approve_status == 0
                                                     && $refund->refund_status == 0
                                                     )
                                                        退货申请中,等待卖家审批
                                                    @endif

                                                    @if(!empty($refund) && $item->id == $refund->item_id
                                                     && $refund->need_return_goods == 1
                                                     && $refund->approve_status == 1
                                                     && $refund->refund_status == 0
                                                     && empty($return)
                                                     )
                                                        卖家同意退货
                                                    @endif

                                                    @if(!empty($refund)
                                                        && !empty($return)
                                                        && $item->id == $return->goods_id
                                                        && $return->shipping_time
                                                        && $return->pickup_time ==false
                                                        && $refund->refund_status == 0
                                                        && empty($order->consignee_time)
                                                    )
                                                       商品退货中
                                                    @endif

                                                    @if(!empty($refund) && !empty($return)
                                                        && $item->id == $return->goods_id
                                                        && $return->shipping_time
                                                        && $return->pickup_time
                                                        && $refund->refund_status == 0
                                                        && $order->consignee_time
                                                    )
                                                        卖家已收到退货
                                                    @endif

                                                    {{--<span>{{  config('order')['status'][$order->order_status]  }}</span>--}}

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
                                                    <?php
                                                        //判断是否已申请退货
                                                        $temp = $order->refund()->where([
                                                            'item_id' => $item->id,
                                                            'need_return_goods' => 1
                                                        ])->pluck('item_id')->toArray()
                                                    ?>
                                                    @if( $order->is_paid  && in_array($order->order_status , [9 ]) && in_array( $item->id , $temp  ) == false   )
                                                        <a class="refund_return" href="javascript:;"> 退货 </a>

                                                        {{-- 已收到货 对订单进行评价 --}}
                                                        {{--<a class="leave-comment" href="javascript:;">评价</a>--}}
                                                    @endif

                                                    {{-- 退货申请审批通过 11 买家填写退货物流信息 --}}
                                                    @if(!empty($refund) && $order->order_status == 11
                                                    && $refund->need_return_goods == 1
                                                    && $refund->refund_status == 0  && empty($return)   )
                                                        <a href="javascript:;" class="fill-return-shipping-info">填写退货物流</a>
                                                    @endif

                                                    @if(!empty($refund) && !empty($return) && $item->id == $return->goods_id
                                                       && empty($return->shipping_time) == false
                                                       && $return->pickup_time ==false
                                                       && $refund->refund_status == 0
                                                   )
                                                        <a href="javascript:;" class="view-return-tracking"
                                                           data-carrier="{{$return->delivery}}"
                                                           data-tracking_number="{{$return->tracking_no}}"
                                                        >查看退货物流</a>
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

    <!-- 查看退货物流信息 Modal -->
    <div class="modal fade" id="return_modal" tabindex="-1" role="dialog" aria-labelledby="#return_modal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Tracking Info</h4>
          </div>
          <div class="modal-body">

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
    <script src="{{mix('js/lib.js')}}"></script>
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
                var currencySymbol = $(this).parent().data('currency');
                var item_id = $(this).parent().data('itemid');

                //请求订单详情 获取订单金额 反填
                $('#refund_apply_myModal .order_amount').html( currencySymbol + totalAmount  );
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
                        data.append('item_id',item_id);

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
                $('#return_shipping_modal').modal('show');

                $('#return_shipping_modal form').validate({
                    ignore:'',
                    //debug:true,
                    submitHandler: function(form)
                    {
                        $.post(route('frontend.order.return_order'),{
                            _token:'{{csrf_token()}}',
                            orderid: $(_this).parent().data('orderid'),
                            itemid:  $(_this).parent().data('itemid'),
                            delivery:$("#return_shipping_modal").find("[name='delivery']").val(),
                            tracking_no:$("#return_shipping_modal").find("[name='tracking_no']").val()
                        }).then(function(res){
                            if(res.code == 0){
                                location.reload()
                            }
                        })
                    }
                });
            });

            $('.view-return-tracking').click(function(){
                var carrier = $(this).data('carrier');
                var tracking_number = $(this).data('tracking_number');
                $.post(route('frontend.order.getSingleTrackingResult'),{
                    _token:'{{csrf_token()}}',
                    carrier_code: carrier,
                    tracking_number:tracking_number
                }).then(function(res){
                    var data = res.result;
                    if(data.meta.code == 200){
                        var d = data.data;
                        var str = '';
                        var str_above='';

                        var str_origin_info = '';
                        var str_destination_info = '';

                        str_above += 'Tracking Number: '+ d.tracking_number + ', '+d.carrier_code+'<br>'+
                            'Start country: ' + d.original_country +'<br>Delivery country: '+d.destination_country+'<br>'+
                            'Updated At: '+ d.updated_at;

                        if( d.origin_info.trackinfo !== null ){
                            for (var i = 0; i<d.origin_info.trackinfo.length ; i++){
                                var tracking_info = d.origin_info.trackinfo[i];
                                str_origin_info+= '<tr><td>'+tracking_info['date']+'</td>' +
                                    '<td>\'+tracking_info[\'StatusDescription\']+\'</td>' +
                                    '<td>\'+tracking_info[\'Details\']+\'</td>' +
                                    '<td>\'+tracking_info[\'checkpoint_status\']+\'</td></tr>'
                            }
                        }

                        if( d.destination_info.trackinfo !== null ){
                            for (var i = 0; i<d.destination_info.trackinfo.length ; i++){
                                var tracking_info = d.origin_info.trackinfo[i];
                                str_destination_info+= '<tr><td>'+tracking_info['date']+'</td>' +
                                    '<td>\'+tracking_info[\'StatusDescription\']+\'</td>' +
                                    '<td>\'+tracking_info[\'Details\']+\'</td>' +
                                    '<td>\'+tracking_info[\'checkpoint_status\']+\'</td></tr>'
                            }
                        }

                        str+= '<div>'+str_above+'</div><table class="table table-bordered"><thead><th>date</th><th>StatusDescription</th><th>Details</th><th>checkpoint_status</th></thead>' +
                            '<tbody>'+str_origin_info+str_destination_info+'</tbody></table>';

                        $('#return_modal .modal-body').html(str);
                        $('#return_modal').modal('show');
                    }else{
                        alert( data.meta.code + ':'+ data.meta.message )
                    }
                })
            });
        })
    </script>
@endpush
