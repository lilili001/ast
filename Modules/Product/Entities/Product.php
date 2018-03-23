<?php

namespace Modules\Product\Entities;

use App\Libraries\EsSearchable;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;
use Modules\Media\Support\Traits\MediaRelation;

class Product extends Model
{
    use Translatable,MediaRelation,Searchable,EsSearchable;

    protected $table = 'product__products';
    public $translatedAttributes = ['title','keywords','meta_description','description','slug'];
    protected $fillable = ['attrset_id','status','sort_order','price','stock','slug',
        'title','keywords','meta_description','description','swatch_colors'];

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
//    //定义有哪些字段需要搜索
//    public function toSearchableArray()
//    {
//        return [
//            'title'=>$this->title,
//            'description'=>$this->description,
//        ];
//    }

}
