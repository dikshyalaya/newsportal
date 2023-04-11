<?php

namespace Modules\Installer\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InstallRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'host'          => 'required',
            'db_user'       => 'required',
            'db_name'       => 'required',
            'first_name'    => 'required',
            'last_name'     => 'required',
            'email'         => 'required|email',
            'password'      => 'required|min:6'
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
}
