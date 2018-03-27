<nav class="navbar navbar-header-menu">
    <div class="container">
            @menu('header-menu')
            <form class="search-form navbar-right" action="/search/result">
                 <input type="text" name="q" class="" placeholder="search">
                 @if( isset($catId) )
                    <input type="hidden" name="catId" value="{{$catId}}" >
                @endif
                 <button type="submit" class="button"><span aria-hidden="true" class="glyphicon glyphicon-search"></span></button>
            </form>
    </div>
</nav>
