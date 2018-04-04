<!DOCTYPE html>
<html>
<head lang="{{ LaravelLocalization::setLocale() }}">
    <meta charset="UTF-8">
    @section('meta')
        <meta name="description" content="@setting('core::site-description')"/>
    @show
    <meta name="user-api-token" content="{{ Auth::check() ?  $currentUser->getFirstApiKey() : null }}"><meta id="token" name="token" value="{{ csrf_token() }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user-api-token" content="{{Auth::check() ?  $currentUser->getFirstApiKey() : null }}">
    <meta name="current-locale" content="{{ locale() }}">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link media="all" type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">
    <title>
        @section('title')@setting('core::site-name')@show
    </title>
    <link rel="shortcut icon" href="{{ Theme::url('favicon.ico') }}">
    <script>
        window.ast = {
            currentLocale : "{{ locale() }}"
        }
        window.trans = <?php
        // copy all translations from /resources/lang/CURRENT_LOCALE/* to global JS variable
        $lang_files = File::files(resource_path() . '/lang/' . App::getLocale());
        $trans = [];
        foreach ($lang_files as $f) {
            $filename = pathinfo($f)['filename'];
            $trans[$filename] = trans($filename);
        }
        echo json_encode($trans);
        ?>;

    </script>
    {!! Theme::style('css/main.css') !!}
    @stack('css-stack')
    @routes
</head>
<body>
@auth
    @include('partials.admin-bar')
@endauth
@include('partials.navigation')


<div class="container" id="app">
    @yield('content')
</div>
@include('partials.footer')

{!! Theme::script('js/all.js') !!}

@yield('scripts')

<?php if (Setting::has('core::analytics-script')): ?>
{!! Setting::get('core::analytics-script') !!}
<?php endif; ?>

<script>
    $.ajaxSetup({
        headers: { 'Authorization':   '{{ Auth::check() ? "Bearer ". $currentUser->getFirstApiKey() : null }}' }
    });
    var AuthorizationHeaderValue = '{{ Auth::check() ? "Bearer ". $currentUser->getFirstApiKey() : null}}';
</script>

@stack('js-stack')
</body>
</html>
