<?php

namespace App\Providers;

use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Carbon;

use App\Libraries\EsEngine;
use Laravel\Scout\EngineManager;
use Elasticsearch\ClientBuilder as ElasticBuilder;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        Carbon::serializeUsing(function ($carbon) {
            return $carbon->format('d/m/y H:i:s');
        });

        resolve(EngineManager::class)->extend('es', function($app) {
            return new EsEngine(ElasticBuilder::create()
                ->setHosts(config('scout.elasticsearch.hosts'))
                ->build(),
                config('scout.elasticsearch.index')
            );
        });

//        Relation::morphMap([
//            'order_refund' => 'Modules\Sale\Entities\OrderRefund',//退款沟通
//            'order_return' => 'Modules\Sale\Entities\OrderReturn',//退货沟通
//            'order'        => 'Modules\Mpay\Entities\Order', //订单评论
//            'product'      => 'Modules\Product\Entities\Product', //产品咨询
//        ]);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->environment() === 'local') {
            $this->app->register('\Barryvdh\Debugbar\ServiceProvider');
        }
    }
}
