@extends('layouts.master')

@section('title')
    cart | @parent
@stop

@section('content')
    <div class="main">
        <cart cart-items = "{{ json_encode( $items ) }}"></cart>
    </div>
@stop

@section('scripts')
    <script src="{{mix('js/cart.js')}}"></script>
@stop