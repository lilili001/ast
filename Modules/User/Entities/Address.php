<?php

namespace Modules\User\Entities;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $table = 'customer_address';
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'telephone',
        'street',
        'city',
        'state',
        'zip',
        'country',
        'user_id',
        'created_at',
        'updated_at',
        'is_default'
    ];
}
