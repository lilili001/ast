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
                            <h2>My Reviews</h2>
                        </div>
                        @foreach($reviews as $review)
                            <hr>
                            <?php
                            $item = $review->product;
                            ?>
                            <div class="attrs">
                                <div class="date">{{ $review->created_at  }}
                                @foreach( json_decode($item->options)->selectedItemLocale as $key=>$value )
                                    <span class="color999">{{ $key .':'.$value  }}</span>
                                @endforeach
                                </div>
                            </div>

                                <div class="review-content">{{$review->content}}</div>
                                <div class="media">
                                    <div class="media-left">
                                        <a href="{{$item->slug}}">
                                            <img class="media-object" src="{{$item->pic_path}}" alt="...">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="media-heading">{{ $item->title  }}</h5>

                                    </div>
                                </div>

                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
    @stop