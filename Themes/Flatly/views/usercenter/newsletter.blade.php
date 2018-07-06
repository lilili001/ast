@extends('layouts.master')

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
     @else
        Your subscribed email was successful, You can click <a href="/">Here</a> to Home Page , Thank You.
    @endif

@stop
