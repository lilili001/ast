@extends('layouts.master')

@section('title')
    Category Product List | @parent
@stop

@section('content')
    <div class="main">
        <div class="row">
            <div class="col-md-3">
                筛选条件
                @include('category.side-attrs')
            </div>
            <div class="col-md-9">
                {{--alix start--}}
                @if( isset($products) )
                    @foreach($products as $product)
                        <div class="col-md-4">
                            <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">
                                @if(count( $product->featured_images->toArray() )>0)
                                    <img src="@thumbnail( $product->featured_images->first()->path, 'mediumThumb')"
                                         alt=""/>
                                @else
                                    <img width="230" src="{{asset('/assets/images/comming.jpg')}}" alt="">
                                @endif
                            </a>
                            <div>
                                <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->title}}</a>
                            </div>
                            <div>
                                <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->price}}</a>
                            </div>
                        </div>
                    @endforeach
                @endif
                {{--alix end--}}
                <div class="clearfix" style="clear:both">
                    {{ $products->render()  }}
                </div>

            </div>
        </div>
    </div>
@stop
