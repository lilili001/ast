<?php

namespace Modules\User\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddressRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|email',
            'telephone' => 'required|numeric',
            'street' => 'required|min:10',
            'country' => 'required',
            'state' => 'required',
            'city' => 'required',
            'is_default' => 'required',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function messages()
    {
        return [
            'email.required' => '邮箱不得为空',
            'email.email' => '邮箱格式不正确',
            'telephone.required' => '手机不得为空',
            'telephone.numeric' => '手机必须为数字',
            'street.required' => '街道地址不得为空',
            'street.min' => '街道地址至少10个字符',
            'country.required' => '国家不得为空',
            'state.required' => '州县不得为空',
            'city.required' => '城市不得为空',
            'is_default.required' => '是否设为默认不得为空',
        ];
    }
}
