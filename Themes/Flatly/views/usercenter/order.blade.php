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
                        account
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
    @stop