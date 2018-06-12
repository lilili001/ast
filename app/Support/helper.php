<?php

use Modules\User\Entities\Sentinel\User;

if( !function_exists('user') ){
    function user($driver=null){
        if ($driver){
            return app('auth')->guard($driver)->user();
        }
        return app('auth')->user();
    }
}

function getUser($id){
    return User::find($id);
}

// 获取树 保留key的树 无限极分类：
/**
 * @param $list
 * @param $tree
 * @param int $pId
 */
  function tree(&$list,&$tree,$pId=0){
    foreach($list as $key=>$value){
        if($pId == $value['pId']){
            $tree[$value['id']] =$value;
            unset($list[$key]);
            tree($list,$tree[$value['id']]['children'] ,$value['id']);
        }
    }
    return $tree;
}
//去掉了 key的树
  function getNodeTree(&$list,&$tree,$pId=0){
    foreach($list as $key=>$value){
        if($pId == $value['pId']){
            $tree[$key] =$value;
            unset($list[$key]);
            getNodeTree($list,$tree[$key]['children']  ,$value['id']);
            $tree = array_values($tree);
        }
    }
    return $tree;
}

/**
 * 得到新订单号 此处用于生成发货单号
 * @return  string
 */
function build_no()
{
    /* 选择一个随机的方案 */
    mt_srand((double) microtime() * 1000000);
    /* PHPALLY + 年月日 + 6位随机数 */
    return 'SHIPPING' . date('Ymd') . str_pad(mt_rand(1, 999999), 6, '0', STR_PAD_LEFT);
}