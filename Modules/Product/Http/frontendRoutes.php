<?php

use Illuminate\Routing\Router;

/** @var Router $router */
$router->group(['prefix' => ''], function (Router $router) {
    $locale = LaravelLocalization::setLocale() ?: App::getLocale();
    $router->get('/all', [
        'as' => $locale . '.cat',
        'uses' => 'PublicController@index',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
    $router->get('/c/{slug}', [
        'as' => $locale . '.cat.slug',
        'uses' => 'PublicController@cat',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
    $router->get('product/{slug}', [
        'as' => $locale . '.product.slug',
        'uses' => 'PublicController@productDetail',
        //'middleware' => config('asgard.product.config.middleware'),
    ]);
});

$router->group(['prefix'=>'elastic'],function(Router $router){
    $router->get('test',['uses' => 'ClientController@elasticsearchTest']);
    $router->get('query',['uses' => 'ClientController@elasticsearchQueries']);
});

$router->group(['prefix'=>'search'],function(Router $router){
    $locale = LaravelLocalization::setLocale() ?: App::getLocale();
    $router->get('/result',['as' => $locale . '.search.result', 'uses' => 'PublicController@search']);
});
