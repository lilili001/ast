@extends('layouts.master')

@section('title')
    checkout | @parent
@stop

@section('content')
    <div class="main">
         <checkout addresses="{{json_encode($addresses)}}" items="{{json_encode($items)}}" user="{{json_encode($user)}}"></checkout>
    </div>
@stop

@section('scripts')
    <script src="{{mix('js/checkout.js')}}"></script>
@stop