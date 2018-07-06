<div class="footer-container">
    <footer id="footer" class="footer-container ">
        <div class="footer-top sidebar">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3 newsletter widget social"><header><h3 class="title">Follow Us</h3></header><p>Follow us in social media</p><a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="https://www.facebook.com/" rel="nofollow" target="_blank"></a> <a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="https://twitter.com/" rel="nofollow" target="_blank"></a> <a class="sbtnf sbtnf-rounded color color-hover icon-pinterest" href="http://pinterest.com/" rel="nofollow" target="_blank"></a> <a class="sbtnf sbtnf-rounded color color-hover icon-google" href="http://www.google.com/" rel="nofollow" target="_blank"></a></div>				<div class="col-xs-12 col-sm-6 col-md-3 newsletter widget links">
                        <header>
                            <h3 class="title">
                                Newsletter						</h3>
                        </header>
                        <p>
                            Sign up for newsletter					</p>
                        <form action="{{route('newsletter.submit')}}" method="post" >
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="newsletter-container">
                                <input type="text" name="email" id="newsletter" placeholder="Enter your email adress..." title="Sign up for our newsletter" class="input-text form-control  validate-email input-block-level">
                                <button type="submit" title="Subscribe" class="newsletter-button">
                                    JOIN</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 widget links"><header><h3 class="title">General Links</h3></header><nav><ul><li class="first"><a href="/about-us" title="About us" rel="nofollow">About Us</a></li><li><a href="/privacy-policy" title="Privacy Policy" rel="nofollow">Privacy Policy</a></li><li><a href="/return-policy" title="Return Policy" rel="nofollow">Return Policy</a></li><li><a href="/faq" title="FAQ" rel="nofollow">FAQ</a></li><li class=" last"><a href="/customer/contacts" title="Contact Us" rel="nofollow">Contact Us</a></li></ul></nav></div><div class="col-xs-12 col-sm-6 col-md-3 newsletter widget links"><header><h3 class="title">My Account</h3></header><ul><li><a href="customer/account/index" rel="nofollow">My Account</a></li><li><a href="/customer/order" rel="nofollow">My Order</a></li><li><a href="/customer/account/productreview" rel="nofollow">My Reviews</a></li><li><a href="/favorite/product" rel="nofollow">My Favorite</a></li><li><a href="/sitemap.xml">Site Map</a></li></ul></div>				<div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container"><img src="/assets/images/copyright.png" alt=""></div><div class="container"><div id="copy">Copyright Notice ©2016 <a href="http://www.fecshop.com">Aststore</a>.com All rights reserved.</div></div>	</div>
    </footer>
</div>
<div id="fixedTools" class="hidden-xs hidden-sm" style="border: none">
    <a id="backtop" class="border-bottom elevator">
        <i class="fa fa-angle-up"></i>
        <span>回到顶部</span>
    </a>
</div>

