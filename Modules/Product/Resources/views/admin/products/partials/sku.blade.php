<?php
    $attrset = \Modules\Product\Entities\Attrset::find( $product->attrset_id );
    $skuAttrs = $attrset->attrs()->where('is_for_sku',true)
        ->get()->toArray() ;
?>
<sku sku-attrs="{{json_encode($skuAttrs)}}"
     pdc="{{json_encode($product)}}"
     locale="{{locale()}}"
     filled-attr="{{json_encode($product->attr()->where('is_for_sku',true)->get())}}"
     filled-sku="{{json_encode($product->sku)}}">
</sku>
