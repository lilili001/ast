<?php
    $skuAttrs = [
        "color" => ['red','blue','black'],
        "size" => ['s','m','l'],
        "capacity" => ['4G','8G','16G'],
        "jixing" => ['mi','apple','huawei'],
        "price" => "",
        "stock" => ""
    ];
?>
<sku sku-attrs="{{json_encode($skuAttrs)}}"
     pdc="{{json_encode($product)}}"
     filled-attr="{{json_encode($product->attr)}}"
     filled-sku="{{json_encode($product->sku)}}">
</sku>
