@extends('layouts.master')

@section('title')
    checkout | @parent
@stop

@section('content')
    <div class="main">
         <checkout
                 currency="{{ json_encode( $allowdCurrencies[getCurrentCurrency()] )    }}"
                 addresses="{{json_encode($addresses)}}"
                 cart-total="{{$total}}"
                 items="{{json_encode($items)}}"
                 user="{{json_encode($user)}}"
                 currency-symbol="{{$currencySymbol}}"
         ></checkout>
    </div>
@stop

@section('scripts')
    <script src="{{mix('js/checkout.js')}}"></script>
    <script>
        $(function(){
            var previousPage = document.referrer;
            //如果来源页不是cart 则跳转到cart 只认从cart跳转过来的
            if( previousPage.indexOf('cart') == -1 ){
                location.href="/cart";
            }
        })
    </script>
@stop