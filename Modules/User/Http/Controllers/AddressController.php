<?php

namespace Modules\User\Http\Controllers;

use App\Services\AjaxResponse;
use Modules\Core\Http\Controllers\BasePublicController;

use Illuminate\Http\Request;
use Modules\User\Entities\Address;
use Modules\User\Http\Requests\AddressRequest;
use Modules\User\Http\Requests\LoginRequest;

class AddressController extends BasePublicController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Address::all()->toArray();
        return view('usercenter.address',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AddressRequest $request)
    {
         Address::create( $request->all() );

         return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        return Address::where('address_id',$id)->get()->toArray();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AddressRequest $request, $id)
    {
        $bool = Address::where('address_id',$id)->update($request->all);
        return $bool ? AjaxResponse::success() : AjaxResponse::fail() ;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $bool = Address::where('address_id',$id)->delete();
        return $bool ? AjaxResponse::success() : AjaxResponse::fail() ;
    }
}
