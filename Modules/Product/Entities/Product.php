<?php

namespace Modules\Product\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Modules\Media\Support\Traits\MediaRelation;

class Product extends Model
{
    use Translatable,MediaRelation;

    protected $table = 'product__products';
    public $translatedAttributes = ['title','keywords','meta_description','description'];
    protected $fillable = ['attrset_id','status','sort_order','price','stock',
        'title','keywords','meta_description','description'];

    public function sku()
    {
        return $this->hasMany(Sku::class);
    }
    public function attr()
    {
        return $this->hasMany(Attr::class);
    }

}
