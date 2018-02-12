<?php

namespace Modules\Product\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Attr extends Model
{
    use Translatable;

    protected $table = 'product__attrs';
    public $translatedAttributes = [];
    protected $guarded = [];
    protected $hidden = ['created_at','updated_at'];
}
