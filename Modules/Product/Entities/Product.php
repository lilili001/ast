<?php

namespace Modules\Product\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;
use Modules\Media\Support\Traits\MediaRelation;

class Product extends Model
{
    use Translatable,MediaRelation;

    protected $table = 'product__products';
    public $translatedAttributes = ['title','keywords','meta_description','description','slug'];
    protected $fillable = ['attrset_id','status','sort_order','price','stock','slug',
        'title','keywords','meta_description','description','swatch_colors'];

    use Searchable;

    public function sku()
    {
        return $this->hasMany(Sku::class);
    }

    public function attr()
    {
        return $this->hasMany(Attr::class);
    }

    public function cats()
    {
        return $this->belongsToMany(Category::class,'product__products_cats');
    }
    public function getId()
    {
        return $this->id;
    }

    public function searchableAs()
    {
        return 'products_index';
    }
}
