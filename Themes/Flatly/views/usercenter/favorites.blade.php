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
                            <h2>My Favorites</h2>
                        </div>
                        @foreach( $favorites as $item )
                            <hr>
                            <div class="media">
                                <div class="media-left">
                                    <a href="{{$item->slug}}">
                                        <img src="@thumbnail( $item->featured_images->first()->path, 'smallThumb')"
                                             alt=""/>

                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="media-heading">{{ $item->title  }}
                                        <a class="pull-right remove" data-id="{{$item->id}}" href="javascript:;">remove</a>
                                    </h5>
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
@push('js-stack')
    <script>
        $(function(){
            $('.remove').click(function(){
                var id = $(this).data('id');
                $.ajax({
                    type:'post',
                    url:'{{route('product.addToFavorite')}}',
                    data:{
                        _token:'{{csrf_token()}}',
                        id: id
                    },
                    success:function(res){
                         location.reload()
                    }
                })
            });
        })
    </script>
@endpush