@extends('layouts.master')

@section('title')
    Blog posts | @parent
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <!-- <?php if (isset($posts)): ?>
            <ul>
                <?php foreach ($posts as $post): ?>
                    <li>
                        <span class="date">{{ $post->created_at->format('d-m-Y') }}</span>
                        <h3><a href="{{ URL::route($currentLocale . '.blog.slug', [$post->slug]) }}">{{ $post->title }}</a></h3>
                    </li>
                    <div class="clearfix"></div>
                <?php endforeach; ?>
            </ul>
            <?php endif; ?> -->

            {{--alix start--}}
            @if( isset($products) )
                @foreach($products as $product)
                    <div class="col-md-4">
                        <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">
                            <img src="@thumbnail( $product->featured_images->first()->path, 'mediumThumb')" alt="" />
                        </a>
                        <div>
                            <a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->title}}</a></div>
                        <div><a href="{{ URL::route($currentLocale . '.product.slug', [$product->slug]) }}">{{$product->price}}</a></div>
                    </div>
                @endforeach
            @endif
            {{--alix end--}}

        </div>
    </div>
@stop
