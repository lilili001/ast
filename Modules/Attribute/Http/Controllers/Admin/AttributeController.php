<?php

namespace Modules\Attribute\Http\Controllers\Admin;

use Modules\Attribute\Entities\Attribute;
use Modules\Attribute\Http\Requests\CreateAttributeRequest;
use Modules\Attribute\Http\Requests\UpdateAttributeRequest;
use Modules\Attribute\Repositories\AttributeRepository;
use Modules\Attribute\Repositories\AttributesManager;
use Modules\Core\Http\Controllers\Admin\AdminBaseController;
use Modules\Product\Entities\Attrset;
use Modules\Product\Repositories\AttrsetRepository;

class AttributeController extends AdminBaseController
{
    /**
     * @var AttributeRepository
     */
    private $attribute;
    private $attrset;
    /**
     * @var AttributesManager
     */
    private $attributesManager;

    public function __construct(AttributeRepository $attribute, AttributesManager $attributesManager,AttrsetRepository $attrset)
    {
        parent::__construct();

        $this->attribute = $attribute;
        $this->attributesManager = $attributesManager;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $attributes = $this->attribute->all();

        return view('attribute::admin.attributes.index', compact('attributes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $namespaces = $this->formatNamespaces($this->attributesManager->getNamespaces());
        $types = $this->attributesManager->getTypes();
        $attrsets = Attrset::all();
        return view('attribute::admin.attributes.create', compact('namespaces', 'types','attrsets'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  CreateAttributeRequest $request
     * @return Response
     */
    public function store(CreateAttributeRequest $request)
    {
        $this->attribute->create($request->all());

        return redirect()->route('admin.attribute.attribute.index')
            ->withSuccess(trans('core::core.messages.resource created', ['name' => trans('attribute::attributes.attributes')]));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Attribute $attribute
     * @return Response
     */
    public function edit(Attribute $attribute)
    {
        $namespaces = $this->formatNamespaces($this->attributesManager->getNamespaces());
        $types = $this->attributesManager->getTypes();
        $attrsets = Attrset::all();
        $curset = $attribute->attrset()->get()->first() ;

        return view('attribute::admin.attributes.edit', compact('attribute', 'namespaces', 'types','attrsets','curset'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Attribute $attribute
     * @param  UpdateAttributeRequest $request
     * @return Response
     */
    public function update(Attribute $attribute, UpdateAttributeRequest $request)
    {
        $this->attribute->update($attribute, $request->all());

        return redirect()->route('admin.attribute.attribute.index')
            ->withSuccess(trans('core::core.messages.resource updated', ['name' => trans('attribute::attributes.attributes')]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Attribute $attribute
     * @return Response
     */
    public function destroy(Attribute $attribute)
    {
        $this->attribute->destroy($attribute);

        return redirect()->route('admin.attribute.attribute.index')
            ->withSuccess(trans('core::core.messages.resource deleted', ['name' => trans('attribute::attributes.attributes')]));
    }

    private function formatNamespaces(array $namespaces)
    {
        $new = [];
        foreach ($namespaces as $namespace) {
            $new[$namespace] = $namespace;
        }

        return $new;
    }
}
