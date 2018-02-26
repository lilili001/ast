<?php

namespace Modules\Product\Repositories;

use Modules\Core\Repositories\BaseRepository;

interface ProductRepository extends BaseRepository
{
    public function getAllAttrsets();
    //public function updateSaleAttrs($product,$data);
    public function getAttrsByProductId($productId,$isForSku);
}
