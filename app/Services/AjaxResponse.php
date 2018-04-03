<?php namespace App\Services;

class AjaxResponse {

    protected function ajaxResponse($code, $message, $data = null)
    {
        $out = [
            'code' => $code,
            'message' => $message ,
        ];

        if ($data !== null) {
            $out['result'] = $data;
        }

        return response()->json($out);
    }

    public function success($message="success", $data = [])
    {
        return $this->ajaxResponse(0, $message, $data);
    }

    public function fail($message="fail", $extra = [])
    {
        return $this->ajaxResponse(-1, $message, $extra);
    }

    public function res($code,$message="",$extra=[])
    {
        return $this->ajaxResponse($code, $message, $extra);
    }
}