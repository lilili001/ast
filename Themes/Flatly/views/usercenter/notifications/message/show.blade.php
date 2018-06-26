@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading"> 私信内容</div>

                    <div class="panel-body">
                        {{--{!! Form::open(['url'=>'inbox/'.$dialog_id.'/store','method'=>'POST']) !!}--}}
                        {{--{!! Form::textarea('body','',['class'=>'form-group form-control','rows'=>2]) !!}--}}

                        {{--{!! Form::submit('发送私信',['class'=>'btn btn-success  pull-right']) !!}--}}
                        {{--{!! Form::close() !!}--}}
                        <div class="clearfix"></div>
                        @foreach($messages as $key=>$message)
                            <div class="media">
                                <div class="media-left">

                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">
                                        <?php
                                            $product = $message->orderReview->product->toArray();
                                        ?>
                                        @if( user()->id === $message->fromUser->id  )
                                            我<a href="">{{$message->fromUser->first_name}}</a>回复：<a href="">{{$message->toUser->name}}</a>
                                        @else
                                            收到来自<a href="">{{$message->fromUser->first_name}}</a>的私信： <span><a class="link" href="{{$product['slug']}}">{{ $product['title']  }}</a></span>
                                        @endif
                                    </h4>

                                    {{$message->content}}

                                    <span class="pull-right">{{  $message->created_at }}</span>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
