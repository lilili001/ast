<?php

namespace Modules\Product\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use Translatable;

    protected $table = 'product__categories';
    public $translatedAttributes = ['name','title','key_words','meta_description','description'];
    protected $guarded = [];
}
