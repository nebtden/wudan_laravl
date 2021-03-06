<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
//    $router->resource('waybill', 'WaybillController');
    $router->resource('goods', 'GoodsController');
    $router->resource('seller', 'SellerController');
    $router->resource('orders', 'OrderController');

});
