@extends('layouts.master')

@section('content')
<div class="main container two-columns-left">
    <div class="row">
        <div class="col-md-2">
            @include('usercenter.partials.sidebar')
        </div>
        <div class="col-md-10">
            <div class="col-main account_center">
                <div class="std">
                    <div style="margin:4px 0 0">
                        <div class="page-title">
                            <h2>My Dashboard</h2>
                        </div>
                        <div class="welcome-msg">
                            <p class="hello"><strong>Hello,  !</strong></p>
                            <p>From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
                        </div>
                        <div class="box-account box-info">
                            <div class="col2-set">
                                <div class="col-1">
                                    <div class="box">
                                        <div class="box-title">
                                            <h3>Contact Information</h3>
                                            <a href="http://fecshop.appfront.fancyecommerce.com/customer/editaccount">Edit</a>
                                        </div>
                                        <div class="box-content">
                                            <div>
                                                <span style="margin:0 10px;">2861166132@qq.com</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2-set addressbook">
                                <div class="col2-set">
                                    <div class="col-1">
                                        <div class="box">
                                            <div class="box-title">
                                                <h3>My Address Book</h3>
                                            </div>
                                            <div class="box-content">
                                                <p>You Can Manager Your Address. </p>
                                                <a href="http://fecshop.appfront.fancyecommerce.com/customer/address">Manager Addresses</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="box">
                                            <div class="box-title">
                                                <h3>My Order</h3>
                                            </div>
                                            <div class="box-content">
                                                <p>You Can View Your Order. </p>
                                                <a href="http://fecshop.appfront.fancyecommerce.com/customer/order">View</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
    @stop