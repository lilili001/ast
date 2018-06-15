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
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_575978_un9g2gammk.css">
    @stack('css-stack')
    @routes

</head>
<body>

@include('partials.admin-bar')

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
    window.currencyRates = {!! json_encode($allowdCurrencies) !!}
    $.ajaxSetup({
        headers: { 'Authorization':   '{{ Auth::check() ? "Bearer ". $currentUser->getFirstApiKey() : null }}' }
    });
    var AuthorizationHeaderValue = '{{ Auth::check() ? "Bearer ". $currentUser->getFirstApiKey() : null}}';

    //获取默认货币设置cookie
    var current_currency = $('#current-currency').text();
    $.cookie('currency', current_currency);

    //货币切换
    $('.currency-wrap li').click(function(){
        var current_currency = $(this).data('value');
        $('#current-currency').text(current_currency);
        //发送请求 后台设置当前货币
        $.ajax({
            url: '/api/currency/switch/'+current_currency ,
            type:'get',
            success:function(){
                $.cookie('currency', current_currency);
                //当前页含有price的地方都修改成对应的货币金额
                $('.price .multiSign').html(current_currency +  window.currencyRates[current_currency].symbol);
                $('.price .multiPrice').each(function(i,item){
                    $(item).text( currency( $(this).data('price') * window.currencyRates[current_currency].rate )   )
                })
            }
        })
    })
</script>

@stack('js-stack')
</body>
</html>
