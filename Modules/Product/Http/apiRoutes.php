<?php

use Illuminate\Routing\Router;

/** @var Router $router */
$router->group(['middleware' => 'api.token','prefix'=>'product'], function (Router $router) {
    $router->post('{productid}/sku', [
        'uses' => 'SkuController@sku',
        'as' => 'admin.product.product.edit.sku',
        'middleware' => 'token-can:product.products.edit'
    ]);
});
