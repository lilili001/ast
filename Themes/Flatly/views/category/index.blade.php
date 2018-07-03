@extends('layouts.master')

@section('title')
    Category Product List | @parent
@stop

@section('content')
    <div class="main product-list">
        <div class="row">
            <div class="col-md-2">
                筛选条件
                @include('category.side-attrs')
            </div>
            <div class="col-md-10">
                {{--alix start--}}
                @if( isset($products) )
                    @foreach($products as $product)
                        <div class="col-md-3 item">
                            <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}" style="max-height:200px;overflow:hidden">
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
                                <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}" class="price" >
                                    <span class="multiSign">{{ json_decode( setting('currency::current-currency') )[0] . $allowdCurrencies[getCurrentCurrency()]['symbol'] }}</span>
                                    <span class="multiPrice" data-price="{{$product->price}}">{{$product->price * $allowdCurrencies[getCurrentCurrency()]['rate'] }}</span>
                                </a>
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
