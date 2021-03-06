<?php

if( !function_exists('user') ){
    function user($driver=null){
        if ($driver){
            return app('auth')->guard($driver)->user();
        }
        return app('auth')->user();
    }
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
