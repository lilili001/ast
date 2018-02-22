<?php

use Illuminate\Routing\Router;

/** @var Router $router */
$router->group(['prefix' => 'category'], function (Router $router) {
    $locale = LaravelLocalization::setLocale() ?: App::getLocale();
    $router->get('/', [
        'as' => $locale . '.cat',
        'uses' => 'PublicController@index',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
    $router->get('s/{slug}', [
        'as' => $locale . '.cat.slug',
        'uses' => 'PublicController@cat',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
    $router->get('products/{slug}', [
        'as' => $locale . '.product.slug',
        'uses' => 'PublicController@show',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
});
