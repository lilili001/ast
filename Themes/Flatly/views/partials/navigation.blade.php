<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ URL::to('/') }}">@setting('core::site-name')</a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            @menu('header-menu')

            <ul class="nav navbar-nav navbar-right">
                @if (Auth::check())

                    <li class="dropdown">
                        <a href="/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hello {{ Auth::user()->first_name . ' '.Auth::user()->last_name }} <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li role="separator" class="divider"></li>
                            <li><a href="{{ route('logout') }}">Logout</a></li>
                        </ul>
                    </li>

                @else

                    <a href="{{ route('login') }}" class="btn btn-default">Login</a>

                @endif

            </ul>

        </div>


    </div>
</nav>
