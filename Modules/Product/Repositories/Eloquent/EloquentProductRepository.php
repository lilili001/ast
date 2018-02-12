<?php

namespace Modules\Product\Repositories\Eloquent;

//use Modules\Product\Events\ProductIsCreating;
//use Modules\Product\Events\ProductIsUpdating;
use Modules\Product\Events\ProductWasCreated;
use Modules\Product\Events\ProductWasUpdated;
use Modules\Product\Repositories\ProductRepository;
use Modules\Core\Repositories\Eloquent\EloquentBaseRepository;

class EloquentProductRepository extends EloquentBaseRepository implements ProductRepository
{
    public function create($data)
    {
        $product = $this->model->create($data);
        event(new ProductWasCreated($product, $data));
        return $product;
    }
    public function update($product, $data)
    {
        $product->update($data);
        event(new ProductWasUpdated($product, $data));
        return $product;
    }
}
