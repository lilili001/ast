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
                                            <td>{{ $order->order_id  }}</td>
                                            <td>{{ $order->payment_gateway  }}</td>
                                            <td>{{ $order->currency . $order->amount_current_currency  }}</td>
                                            <td>{{ config('order.status')[$order->order_status]  }}</td>
                                            <td>
                                                <a href="">
                                                    {{ $order->created_at }}
                                                </a>
                                            </td>
                                            <td>
                                                <div class="btn-group" data-orderid="{{ $order->order_id  }}">
                                                    <a href="{{ route('frontend.order.detail', ['order' => $order->order_id] ) }}">查看</a>

                                                    {{-- 取消订单：下单 未付款 --}}
                                                    @if(  $order->is_paid == false  && $order->payment_time == 0  )
                                                        <a class="cancel" href="javascript:;">取消</a>
                                                            @if( $order->order_status !== 5  )
                                                                <a href="">去支付</a>
                                                            @endif
                                                    @endif

                                                    {{-- 退款 仅仅限于 已付款 未发货 24小时内可以申请退款 这时候即使订货了 也可以及时退回  --}}
                                                    @if( $order->is_paid  && $order->is_shipped == 0 && $order->payment_time >0 && time() - $order->payment_time->timestamp <  3600*24   )
                                                        <a class="refund" href="javascript:;">退款</a>
                                                    @endif

                                                    {{-- 退货 已收到货物 需要接入物流api实时监测是否已签收 不满意 7天内 申请退货 退货完成后退款 --}}
                                                    @if( $order->is_paied && $order->status == 9 )
                                                    <a class="refund_return" href="javascript:;"> 退货 </a>
                                                    {{-- 已收到货 对订单进行评价 --}}
                                                    <a href="">评价</a>
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
</div>
@stop

@push('js-stack')
    <script>
        $(function(){

            $('.cancel').click(function(){
                $.post(route('frontend.order.cancel',{order:$(this).parent().data('orderid')})).then(function(){  })
            })

            $('.refund').click(function(){
                $.post(route('frontend.order.refund',{order:$(this).parent().data('orderid')})).then(function(){  })
            })

            $('.refund_return').click(function(){
                $.post(route('frontend.order.refund_return',{order:$(this).parent().data('orderid')})).then(function(){  })
            })
        })
    </script>
@endpush