<div class="col-left ">
    <div class="col-left sidebar">
        <div class="block block-account">
            <div class="block-title">
                <strong><span>My Account</span></strong>
            </div>
            <div class="block-content">
                <ul>
                    <li class="{{ isset($pageClass) && $pageClass  == 'usercenter'  ? 'current' : '' }}">
                        <a href="/usercenter">Account Dashboard</a>
                    </li>
                    <li class="{{ isset($pageClass) && $pageClass  == 'account'  ? 'current' : '' }}">
                        <a href="/account">Password Reset</a>
                    </li>
                    <li class="{{ isset($pageClass) && $pageClass  == 'address'  ? 'current' : '' }}">
                        <a href="/address">Address Book</a>
                    </li>
                    <li class="{{ isset($pageClass) && $pageClass  == 'order'  ? 'current' : '' }}">
                        <a href="{{route('frontend.order.index')}}">My Orders</a>
                    </li>
                    <li class="{{ isset($pageClass) && $pageClass  == 'reviews'  ? 'current' : ''}}">
                        <a href="/reviews">My Product Reviews</a>
                    </li>
                    <li class="{{ isset($pageClass) && $pageClass  == 'favorites'  ? 'current' : ''}}">
                        <a href="/favorites">My Favorite</a>
                    </li>

                    <li class="{{ isset($pageClass) && $pageClass  == 'notifications'  ? 'current' : ''}}">
                        <a href="/notifications">Notifications</a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>