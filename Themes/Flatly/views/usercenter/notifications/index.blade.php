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

                            <div class="row">
                                <div class=" ">
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><a href="{{route('notifications')}}">未读消息</a> | <a href="{{route('notifications')}}?all=1">已读消息</a></div>

                                        <div class="panel-body">
                                            @if( count( $notifications ) > 0 )
                                            @foreach( $notifications as $notification )
                                                @include('usercenter.notifications.'.snake_case(class_basename($notification->type)))
                                            @endforeach
                                            @else
                                                暂无消息通知
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
@stop
