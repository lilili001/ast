@extends('layouts.master')

@section('title')
    {{ $page->title }} | @parent
@stop
@section('meta')
    <meta name="title" content="{{ $page->meta_title}}" />
    <meta name="description" content="{{ $page->meta_description }}" />
@stop

@section('content')
    <div class="main">
        <h1>{{ $page->title }}</h1>
        {!! $page->body !!}
        check blog posts <a href="{{route(locale() . '.blog')}}">-></a>
    </div>
@stop
