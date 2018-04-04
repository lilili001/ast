<?php

namespace Modules\Product\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Cache;
use Modules\Media\Image\Imagy;
use Modules\Product\Entities\Product;
use Modules\Product\Repositories\ProductRepository;
use AjaxResponse;
use ShoppingCart;

class CartController extends Controller
{
    protected $product;
    protected $attr;

    /**
     * ProductController constructor.
     * @param $product
     */
    public function __construct(ProductRepository $product, Imagy $imagy)
    {
        $this->imagy = $imagy;
        $this->product = $product;
    }

    public function cart()
    {
        //ShoppingCart::clean();

        $items = ShoppingCart::search(['userId'=>user()->id]);
        $items = array_values($items->toArray());
        return view('cart', compact('items'));
    }

    public function checkout()
    {

    }

    public function getSku(Product $product, Request $request)
    {
        $options = request('options');
        $sku = $this->product->findSku($product, $options);
        return AjaxResponse::success('addToCart', $sku);
    }

    public function addToCart(Product $product, Request $request)
    {
        ShoppingCart::associate('Modules\Product\Entities\Product');
        $options = request('options');
        $sku = $this->product->findSku($product, $options);

        if ($sku['stock'] == 0) {
            return AjaxResponse::success('库存不足', $sku['stock']);
        } else {
            $swatchColors = json_decode($product->swatch_colors, true);
            $imagePath = !empty($swatchColors) ? $swatchColors[$options['color']]['filepath'] : [];

            $data = ShoppingCart::add(
                $product->id,
                $product->title,
                request('qty'),
                $sku['price'],
                [
                    'sku_options' => $options,
                    'selectedItemLocale' => request('selectedItemLocale'),
                    'selected' => false,
                    'image' => !empty($imagePath) ? $imagePath : $this->imagy->getThumbnail($product->featured_images->first()->path, 'smallThumb'),
                    'slug' => '/product/'.$product->slug,
                    'userId' => user()->id
                ]);

            return AjaxResponse::success('添加成功', ShoppingCart::all());
        }
    }

    public function updateCart(Product $product)
    {
        $rawId = request('rawId');
        $qty = request('qty');

        $item = ShoppingCart::get($rawId);
        $sku = $this->product->findSku($product, $item['sku_options']);

        if ($sku['stock'] < $qty ) {
            return AjaxResponse::fail('库存不足', $sku['stock']);
        } else  {
            ShoppingCart::update($rawId, $qty);
            return AjaxResponse::success('修改成功');
        }
    }

    public function updateStatus()
    {
        $data = request('data');
        $items = ShoppingCart::all();
        foreach( $data as $item ){
            ShoppingCart::update(  $item['rawId'],  ['selected' => $item['selected']]);
        }
        return AjaxResponse::success('修改成功');
    }
    
    public function deleteCartItem(Product $product)
    {
        $rawId = request('rawId');
        $bool = ShoppingCart::remove( $rawId);
        return $bool ? AjaxResponse::success('修改成功') : AjaxResponse::fail('失败');
    }
}