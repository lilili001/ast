@extends('layouts.master')

@section('content')
<div class="main container two-columns-left">
    <div class="row">
        <div class="col-md-2">
            @include('usercenter.partials.sidebar')
        </div>
        <div class="col-md-6">
            <div class="col-main account_center">
                <div class="std">
                    <div style="margin:4px 0 0">
                        <div class="page-title">
                            <h2>{{ trans('user::auth.reset password') }}</h2>
                        </div>

                            <div class="login-logo">
                                <a href="{{ url('/') }}">{{ setting('core::site-name') }}</a>
                            </div>
                            <div class="login-box-body">
                                {{--<p class="login-box-msg">{{ trans('user::auth.reset password') }}</p>--}}
                                @include('partials.notifications')

                                {!! Form::open(['route'=>'user.front.resetpassword']) !!}

                                <div class="form-group has-feedback {{ $errors->has('oldPass') ? ' has-error' : '' }}">
                                    <input type="password" class="form-control" autofocus
                                           name="oldPass" placeholder="{{ trans('auth.oldPass') }}">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    {!! $errors->first('oldPass', '<span class="help-block">:message</span>') !!}
                                </div>

                                {!! Form::open(['route'=>'user.front.resetpassword']) !!}
                                <div class="form-group has-feedback {{ $errors->has('password') ? ' has-error' : '' }}">
                                    <input type="password" class="form-control" autofocus
                                           name="password" placeholder="{{ trans('user::auth.password') }}">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                                </div>
                                <div class="form-group has-feedback {{ $errors->has('password_confirmation') ? ' has-error has-feedback' : '' }}">
                                    <input type="password" name="password_confirmation" class="form-control" placeholder="{{ trans('user::auth.password confirmation') }}">
                                    <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                                    {!! $errors->first('password_confirmation', '<span class="help-block">:message</span>') !!}
                                </div>

                                <div class="row">
                                    <div class="col-xs-12">
                                        <button type="submit" class="btn btn-primary btn-block btn-flat pull-right">
                                            {{ trans('user::auth.reset password') }}
                                        </button>
                                    </div>
                                </div>
                                {!! Form::close() !!}
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
        $('form').submit(function(){
            $.post(
                route('user.front.resetpassword'),
                {
                    _token:'{{csrf_token()}}',
                    oldPass:$('[name="oldPass"]').val(),
                    password:$('[name="password"]').val(),
                    password_confirmation:$('[name="password_confirmation"]').val()
                }
            ).then(function(res){
                if( res.code ==0 ){
                    bootbox.alert({
                        message: '密码修改成功',
                        size:'small'
                    })
                }
            });
            return false;
        });
    })
</script>
@endpush