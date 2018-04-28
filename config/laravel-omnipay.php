<?php

return [

	// The default gateway to use
	'default' => 'paypal',

	// Add in each gateway here
	'gateways' => [
		'paypal' => [
			'driver'  => 'PayPal_Express',
			'options' => [
                'username' => 'xxxxxxxxxxxxxxxxx',
                'password' => 'xxxxxxxxxxxxxxxxx',
                'signature' => 'xxxxxxxxxxxxxxxxx',
                'sandbox' => true
			]
		],
        'alipay' => [
            'driver' => 'Alipay_AopPage',
            'options' => [
            ]
        ]
	]
];