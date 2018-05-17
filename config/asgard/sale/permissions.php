<?php

return [
    'sale.orders' => [
        'index' => 'sale::orders.list resource',
        'create' => 'sale::orders.create resource',
        'edit' => 'sale::orders.edit resource',
        'destroy' => 'sale::orders.destroy resource',
    ],
    'sale.transactions' => [
        'index' => 'sale::transactions.list resource',
        'create' => 'sale::transactions.create resource',
        'edit' => 'sale::transactions.edit resource',
        'destroy' => 'sale::transactions.destroy resource',
    ],
    'sale.invoices' => [
        'index' => 'sale::invoices.list resource',
        'create' => 'sale::invoices.create resource',
        'edit' => 'sale::invoices.edit resource',
        'destroy' => 'sale::invoices.destroy resource',
    ],
// append



];
