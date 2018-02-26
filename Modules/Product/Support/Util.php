<?php
namespace Modules\Product\Support;
use Carbon\Carbon;

class Util
{
    //sku table
    public function assignSkuIds(array $data = [], $product_id = null)
    {
        return array_map(function ($item) use ( $product_id  ) {
            $temp = [];
            $temp['product_id'] = $product_id;
            $temp['settings'] = json_encode($item);
            $temp['created_at'] = Carbon::now();
            $temp['updated_at'] = Carbon::now();
            return $temp;
        },$data);
    }

    //attr table
    public function assignAttrIds($data,$product_id,$isSku=false)
    {

        if(is_array($data) || is_object($data)){
            info(  $isSku .'|'. gettype($data) );
            foreach ($data as $key=>$item){
                $arr[] = [
                    'attr_key' => $key,
                    'value' => json_encode($item),
                    'product_id' => $product_id,
                    'is_for_sku' => $isSku,
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ];
            }
        }else{
            $arr = [];
            info( $isSku .'| not an array nor an object'.$data);
        }
        return $arr;
    }
}