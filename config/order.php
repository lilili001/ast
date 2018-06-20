<?php

return [
    'status' =>  [
        1 => '待付款',
        2 => '付款确认', //客户已付款 等待财务确认
        3 => '已付款' ,

        //case1: 取消订单 未付款的情况
        4 => '取消订单申请',//订单确认后24小时内 用户不想要了 取消订单
        5 => '已取消', //订单但取消 退款给买家

        //case2: 正常流程
        6 => '正在出库' , //网上订单被打印 , 同时订单在等待库房人员出库
        7 => '已发货' , //已出库,
        8 => '等待收货' , //发货两天后 修改订单状态为等待收货
        9 => '已签收',
        21 => '完成',//默认签收 或退款  后2天自动更新未完成

        //case3: 未收到货 直接退款的情况
        15 => '退款申请',
        151=> '部分退款申请',
        16 => '退款申请审批通过',
        17 => '退款成功',

        //case4: 已收到货 退款的情况
        10 => '商品退库申请,等待卖家确认中', //用户收到货后 不满意要退货 进行退货申请
        11 => '商家确认退库申请',
        12 => '退库中' , //买家寄回快递后
        13 => '已收到退货',

        20 => 'hold',// 欺诈订单或其他原因
        21 => '退货审批驳回'
    ],
    'shipping_method' => [
        'ems' => 'Post Air' //E 邮宝
    ]
];
