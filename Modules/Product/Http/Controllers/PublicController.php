<?php
namespace Modules\Product\Http\Controllers;
use Modules\Core\Http\Controllers\BasePublicController;
use Modules\Product\Repositories\CategoryRepository;

class PublicController extends BasePublicController
{

    /**
     * PublicController constructor.
     */
    protected $cat;
    public function __construct(CategoryRepository $cat)
    {
        $this->cat = $cat;
    }

    public function index()
    {
        return view('category.index');
    }

    public function cat($slug)
    {
        $cat = $this->cat->findBySlug($slug);
        $products = $cat->products;
        return view('category.index',compact('products'));
    }

    public function productDetail($slug)
    {
        return view('product.index');
    }

    public function test()
    {
        return 1;
    }
}