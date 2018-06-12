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

                        <div class="box box-primary">
                            <div class="box-header">
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                    <table class="data-table table table-bordered table-hover">
                                        <thead>
                                        <tr class="ress_tit">
                                            <th>ID</th>
                                            <th>订单号</th>
                                            <th>支付类型</th>
                                            <th>支付金额</th>
                                            <th>订单状态</th>
                                            <th>{{ trans('core::core.table.created at') }}</th>
                                            <th data-sortable="false">{{ trans('core::core.table.actions') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php if (isset($orders)): ?>
                                        <?php foreach ($orders as $key => $order): ?>
                                        <tr>
                                            <td>{{ $key+1  }}</td>
                                            <td><a href="{{ route('frontend.order.detail', ['order' => $order->order_id] ) }}"> {{ $order->order_id  }} </a> </td>
                                            <td>{{ $order->payment_gateway  }}</td>
                                            <td>{{ $order->currency . $order->amount_current_currency  }}</td>
                                            <td> <span class="red">{{ config('order.status')[$order->order_status]  }}</span> </td>
                                            <td>{{ $order->created_at }}</td>
                                            <td>
                                                <div class="btn-group" data-orderid="{{ $order->order_id  }}">

                                                    {{-- 取消订单：下单 未付款 --}}
                                                    @if(  $order->is_paid == false  && $order->payment_time == 0 && $order->order_status == 1  )
                                                        <a class="cancel" href="javascript:;">取消</a>
                                                            @if( $order->order_status !== 5  )
                                                                <a href="{{route('checkout.payment.paypal',['order'=> encrypt( $order->order_id ) ])}}">去支付</a>
                                                            @endif
                                                    @endif

                                                    @if( $order->order_status == 5 )
                                                        <span href="javascript:;">已取消</span>
                                                    @endif

                                                    {{-- 退款 仅仅限于 已付款 未发货 24小时内可以申请退款 这时候即使订货了 也可以及时退回  --}}
                                                    @if(
                                                        $order->is_paid
                                                        && $order->is_shipped == 0
                                                        && $order->payment_time >0
                                                        && time() - strtotime($order->payment_time) <  3600*24
                                                        && $order->order_status != 15
                                                    )
                                                        <a class="refund" href="javascript:;">退款 </a>
                                                    @endif

                                                    {{-- 退货 已收到货物 需要接入物流api实时监测是否已签收 不满意 7天内 申请退货 退货完成后退款 --}}
                                                    @if( $order->is_paid  && in_array($order->order_status , [9 ])   )
                                                        <a class="refund_return" href="javascript:;"> 退货 </a>

                                                        {{-- 已收到货 对订单进行评价 --}}
                                                        <a class="leave-comment" href="javascript:;">评价</a>
                                                    @endif

                                                    {{-- 退货申请审批通过 11 买家填写退货物流信息 --}}
                                                    @if( $order->order_status == 11 )
                                                        <a href="javascript:;" class="fill-return-shipping-info">填写退货物流</a>
                                                    @endif

                                                    {{-- 发货后两天 定时任务 显示 确认收货按钮 买家确认收货后 订单状态等待收货  显示评价按钮 --}}
                                                    @if( $order->is_shipped && $order->order_status == 8   )
                                                        <a class="confirm-order-receipt" href="javascript:;">确认收货</a>
                                                    @endif

                                                </div>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <?php endif; ?>
                                        </tbody>

                                    </table>
                                    <!-- /.box-body -->
                                </div>
                            <!-- /.box -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    {{--*************************************买家填写退货申请**********************************************************************--}}
    <!-- Modal -->
    <div class="modal fade" id="refund_apply_myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">退款申请</h4>
          </div>
          <div class="modal-body">

              <form class="form-horizontal"  enctype ="multipart/form-data" method="post" action="" id="refund_apply_form" autocomplete="off" novalidate="novalidate">
                            <div class="box-body">

                              <div class="form-group mar-b0">
                                <label for="inputPassword3" class="col-sm-3 control-label">订单金额:</label>
                                <div class="col-sm-9 padding-l0 pad-t7 order_amount"></div>
                              </div>

                              <div class="form-group mar-b0 is-required">
                                    <label for="inputPassword3" class="col-sm-3 control-label">我愿意支付卖家：</label>
                                    <div class="col-sm-9 padding-l0  pad-t7">
                                        <input  type="text" name="like_to_pay_seller" required class="form-control input-sm like-to-pay-seller" placeholder="">
                                    </div>
                              </div>

                              <div class="form-group mar-b0 is-required">
                                    <label for="inputPassword3" class="col-sm-3 control-label">退款金额：</label>
                                    <input type="hidden" name="refund_amount" required>
                                    <div class="col-sm-9 padding-l0 refund_amount"> </div>
                              </div>

                              <div class="form-group mar-b0">
                                    <label for="inputPassword3" class="col-sm-3 control-label">退款原因：</label>
                                    <div class="col-sm-9 padding-l0">
                                        <textarea name="refund_reason" class="form-control input-sm" id="" cols="30" rows="2"></textarea>
                                    </div>
                              </div>

                              <div class="form-group  mar-t10">
                                    <label for="inputPassword3" class="col-sm-3 control-label">上传附件：</label>
                                    <div class="col-sm-9 padding-l0">
                                        <div class="file_input_wrap">
                                            <div class="upload">点击上传</div>
                                            <input type="file" multiple name="orderfile[]" class="file_input">
                                            <span  class="filenames"></span>
                                        </div>
                                    </div>
                              </div>
                            </div>
                            <!-- /.box-footer -->
                  <!-- /.box-body -->
                  <div class="box-footer modal-footer">
                      <button type="submit" class="btn btn-default ">Cancel</button>
                      <button type="submit" class="btn btn-info pull-right">Save</button>
                  </div>
              </form>
          </div>
        </div>
      </div>
    </div>

    {{--*************************************买家填写退货物流信息**********************************************************************--}}

    <!-- Modal -->
    <div class="modal fade" id="return_shipping_modal" tabindex="-1"  role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">退货信息</h4>
                </div>
                <div class="modal-body">
                   <form role="form">
                         <div class="box-body">
                           <div class="form-group">
                             <label for="carrier">物流公司</label>
                             <input type="text" class="form-control"  placeholder="物流公司">
                           </div>
                           <div class="form-group">
                             <label for="trackingNo">运单号</label>
                             <input type="text" class="form-control" placeholder="trackingNo">
                           </div>
                         </div>
                   </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

</div>
@stop

@push('js-stack')
    <script src="{{mix('js/lib.js')}}"></script>
    <script>
        $(function(){

            $('.cancel').click(function(){
                var _this = this;
                $.post(
                    route('frontend.order.cancel',{order:$(this).parent().data('orderid') }),
                    {_token:'{{csrf_token()}}'}
                ).then(function(res){
                    if(res.code == 0){
                        $(_this).text('已取消');
                        $(_this).siblings().remove()
                    }
                })
            });

            $('.confirm-order-receipt').click(function () {
                $.post(route('frontend.order.confirm-order-receipt',{order:$(this).parent().data('orderid')})).then(function(){  })
            });
            //退款
            $('.refund').click(function(){
                $.post(
                    route('frontend.order.apply.refund',{order:$(this).parent().data('orderid')}),
                    {
                        _token:'{{csrf_token()}}'
                    }
                ).then(function(){  })
            });

            var formData = new FormData();

            //退货
            $('.refund_return').click(function(){
                var _this = this;
                var orderid = $(_this).parent().data('orderid');

                //请求订单详情 获取订单金额 反填
                $.get(
                    route('frontend.order.detail',{order:$(this).parent().data('orderid')})
                ).then(function(res){
                    var order_total_amount = res.result.amount_current_currency;
                    $('#refund_apply_myModal .order_amount').html( res.result.currency + res.result.amount_current_currency  );
                    $('#refund_apply_myModal').modal('show');

                    $('#refund_apply_myModal .like-to-pay-seller').attr('max',order_total_amount);

                    $('#refund_apply_myModal').on('keyup','.like-to-pay-seller',function(){
                        if( Number(this.value) <= Number(order_total_amount) && !!this.value ){
                            $('input[name="refund_amount"]').val( order_total_amount - this.value );
                            var refund_amount = ( order_total_amount - this.value ).toString();
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
                        var namestr = ''
                        $.each(files,function(index,item){
                            data.append('orderfile[]' , item  );
                            namestr += item.name +'</br>' ;
                        });
                        $(this).next('span').html( namestr )
                    });

                    //是否收到货
                    var has_received =  $('input[name="has_received_goods"]:checked').val()
                    if( has_received !== undefined ){
                        $('input[name="has_received_goods_id"]').val(has_received)
                    }

                    $('input[name="has_received_goods"]').change(function(){
                        $('input[name="has_received_goods_id"]').val(  $('input[name="has_received_goods"]:checked').val()  );
                        $('#has_received_goods_id-error').hide()
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
            });

            $('.fill-return-shipping-info').click(function(){
                var _this = this;
                $('#return_shipping_modal').modal('show')
            });
        })
    </script>
@endpush