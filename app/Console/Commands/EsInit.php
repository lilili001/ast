<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class EsInit extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'es:init';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'init laravel es for model';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $client = new \GuzzleHttp\Client();
        $url = config('scout.elasticsearch.config.hosts')[0] . ':9200/' . config('scout.elasticsearch.index');

        $client->put($url, [
            \GuzzleHttp\RequestOptions::JSON => [
                'settings' => [
                    'number_of_shards' => 1, //一个索引中含有的主分片的数量
                    'number_of_replicas' => 0 //每一个主分片关联的副本分片的数量
                ],
                'mappings' => [
                    'product_products' => [  //类型名（相当于mysql的表）
                        '_all' => [   //  是否开启所有字段的检索
                            'enabled' => 'false'
                        ],
                        '_source' => [ //  存储原始文档
                            'enabled' => true
                        ],
                        'properties' => [   //文档类型设置（相当于mysql的数据类型）
                            'translations' => [
                                'type' => 'nested',
                                'properties' => [
                                    'title' => [
                                        'type' => 'text', // 字段类型为全文检索,如果需要关键字,则修改为keyword,注意keyword字段为整体查询,不能作为模糊搜索
                                        "analyzer" => "ik_max_word",
                                        "search_analyzer" => "ik_max_word",
                                    ],
                                    'description' => [
                                        'type' => 'text', // 字段类型为全文检索,如果需要关键字,则修改为keyword,注意keyword字段为整体查询,不能作为模糊搜索
                                        "analyzer" => "ik_max_word",
                                        "search_analyzer" => "ik_max_word",
                                    ],
                                    'keywords' => [
                                        'type' => 'text', // 字段类型为全文检索,如果需要关键字,则修改为keyword,注意keyword字段为整体查询,不能作为模糊搜索
                                        "analyzer" => "ik_max_word",
                                        "search_analyzer" => "ik_max_word",
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]);
    }
}
