<style>
    .admin-nav-bar.navbar {
        height: 30px;
        min-height: 30px;
        background-color: #f2f2f2;
        border-bottom: 1px solid #dcdcdc;
    }
    @media (min-width: 768px) {
        .admin-nav-bar .navbar-nav > li > a {
            padding-top: 5px;
            padding-bottom: 3.5px;
            font-size: 11px;
        }
    }
</style>
<?php
$locale = LaravelLocalization::setLocale() ?: App::getLocale();
$name = Route::currentRouteName();
$arr = [
    'homepage',$locale.'.cat.slug' , $locale.'.product.slug'
];
$isCmsPage = in_array( $name , $arr );

?>


<nav class="admin-nav-bar navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                @if (Auth::check())
                    <li class="dropdown">
                        <a href="/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            Hello {{ user()->login_type ? user()->nickname :  Auth::user()->first_name . ' '.Auth::user()->last_name }} <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li role="separator" class="divider"></li>
                            <li><a href="{{ route('logout') }}">Logout</a></li>
                        </ul>
                    </li>
                @else
                    <li>
                        <a href="{{ route('login') }}"  >Login</a>
                    </li>
                @endif
            </ul>

            <ul class="nav navbar-nav navbar-right">
                @if($isCmsPage)
                    <li class="dropwdown currency-wrap">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button"> <span id="current-currency">{{  json_decode(setting('currency::current-currency'))[0]  }}</span>  <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            @foreach($allowdCurrencies as $currency_code=>$item)
                            <li data-value="{{ $currency_code  }}"><a href="javascript:;">{{$currency_code}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                @endif
                @if(isset($page))
                    <li class=""><a href="{{ $page->getEditUrl() }}">{{ trans('page::pages.edit-page') }}</a></li>
                @endif
                    <li class=""><a href="/cart">购物车</a></li>
                    @auth
                    <li class=""><a href="/usercenter">用户中心</a></li>
                    @endauth
                @auth
                    @if( user()->isAdmin() )
                <li class=""><a href="{{ route('dashboard.index') }}">{{ trans('core::core.back to backend') }}</a></li>
                        @endif
                @endauth
            </ul>
        </div>
    </div>
</nav>
<div class="header">
    <div class="container">
        <a class="logo" href="/" title="Cheap Dresses Online Sale">
            <img src="https://ss.tbdress.com/images/new_item/logo.gif" alt="Cheap Dresses Online Sale at ">
        </a>
    </div>
</div>
