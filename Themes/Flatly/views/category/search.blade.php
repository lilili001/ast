@extends('layouts.master')

@section('title')
    Category Product List | @parent
@stop

@section('content')
    <div class="main">
        <div class="row">

            <div class="col-md-12">

                {{--alix start--}}
                @if( isset($products)  &&  $products->total()>0 )
                    @foreach($products as $product)
                        <div class="col-md-3">
                            <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">
                                <img width="200" height="200" src="@thumbnail( $product->featured_images->first()->path, 'mediumThumb')" alt="" />
                            </a>
                            <div>
                                <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->title}}</a></div>
                            <div><a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->price}}</a></div>
                        </div>
                    @endforeach
                @else
                        You searched for: " {{ request('q') }}", no result found.
                @endif
                {{--alix end--}}
                {{ $products->render() }}
            </div>
        </div>
    </div>
@stop
