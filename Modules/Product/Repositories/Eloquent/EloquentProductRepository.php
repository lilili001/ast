<?php

namespace Modules\Product\Repositories\Eloquent;

//use Modules\Product\Events\ProductIsCreating;
//use Modules\Product\Events\ProductIsUpdating;
use Illuminate\Support\Facades\DB;
use Mockery\Exception;
use Modules\Product\Entities\Attrset;
use Modules\Product\Entities\Product;
use Modules\Product\Events\ProductWasCreated;
use Modules\Product\Events\ProductWasDeleted;
use Modules\Product\Events\ProductWasUpdated;
use Modules\Product\Repositories\ProductRepository;
use Modules\Core\Repositories\Eloquent\EloquentBaseRepository;
use Modules\Product\Support\Util;
use AjaxResponse;
class EloquentProductRepository extends EloquentBaseRepository implements ProductRepository
{
    public function create($data)
    {
        return DB::transaction(function ()use($data){
            $product = $this->model->create($data);
            $product->cats()->sync([$data['category_id']]);
            event(new ProductWasCreated($product, $data));
            return $product;
        });
    }
    public function update($product, $data)
    {
       return DB::transaction(function ()use($product,$data){
            $product->update($data);
            if (isset($data['category_id'])){
                $product->cats()->sync([$data['category_id']]);
            }
            event(new ProductWasUpdated($product, $data));
            return $product;
        });
    }
    public function destroy($product)
    {
        event(new ProductWasDeleted($product));
        return DB::transaction(function ()use($product){
            try{
                $product->attr()->delete();
                $product->sku()->delete();
                $product->delete();
            }catch (Exception $e){
                return AjaxResponse::fail('',[
                    'errCode' => $e->getCode(),
                    'errMsg'  => $e->getMessage()
                ]);
            }
        });
    }

    public function getAllAttrsets()
    {
        return Attrset::all();
    }

    public function updateSaleAttrs($product, $data)
    {
        info($product);
        return DB::transaction(function()use($product, $data){
            try{
                $this->update($product,$data);

                unset($data['attrset_id']);

                //获取选中的sku 属性值列表
                $dataAttrs = (new Util())->assignAttrIds($data,$product->id);

                //skuattr table
                $product->attr()->where('is_for_sku',false)->delete();

                DB::table('product__attrs')->insert($dataAttrs);
            }catch (Exception $e){
                return AjaxResponse::fail('',[
                    'errCode' => $e->getCode(),
                    'errMsg'  => $e->getMessage()
                ]);
            }
        });
    }

    public function getAttrsByProductId($productId,$isForSku)
    {
        $product = Product::find($productId);
        $attrs = $product->attr()->where('is_for_sku',$isForSku)->get();
        return $attrs;
    }


}
