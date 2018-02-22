<?php
namespace Modules\Product\Http\Controllers;
use Modules\Core\Http\Controllers\BasePublicController;

class PublicController extends BasePublicController
{
    public function index()
    {
        return view('category.index');
    }
}