<?php
/**
 * Created by PhpStorm.
 * User: yejuan
 * Date: 2017/12/27
 * Time: 11:57
 */

namespace App\Services;
use App\Http\Requests\Request;
use Carbon\Carbon;
use Uuid;
use Storage;
use Validator;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Response;

/**
 * Class ImageH
 * @package App\Services
 */
class ImageH
{
    /**
     * @param array $files
     * @return array
     * 存放路径：public/images
     * 应用：
     *      1.客户退款 上传凭证
     */
    public function upload(array $files = [] )
    {
        //校验是否是图片
        $fileList = [];
        foreach( $files as $file ){
            $input = array('image' => $file);
            $rules = array(
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            );
            $validator = Validator::make($input, $rules);
            if ( $validator->fails() ) {
                return Response::json([
                    'success' => false,
                    'errors' => $validator->getMessageBag()->toArray()
                ]);
            }

            $ext = $file->getClientOriginalExtension();
           //$realpath = $file->getRealPath();
            $filename = date('Y-m-d-H-i-s').'-'.uniqid().'.'.$ext;
            $destinationPath = public_path('/images');
            $file->move($destinationPath , $filename);
            array_push( $fileList , $filename );
        }
        return $fileList;
    }
}