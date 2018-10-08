<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018\10\8 0008
 * Time: 14:24
 */
function checkSignature($token){
    // 1）将token、timestamp、nonce三个参数进行字典序排序
    $timestamp = $_GET['timestamp'];
    $nonce     = $_GET['nonce'];
    $signature = $_GET['signature'];
    $temArr    = array($timestamp, $nonce, $token);
    sort($temArr);

    //2）将三个参数字符串拼接成一个字符串进行sha1加密
    $temStr = implode( $temArr );
    $temStr = sha1($temStr);

    //3）开发者获得加密后的字符串可与signature对比，标识该请求来源于微信
    if ($temStr == $signature && isset($_GET['echostr'])) {
        $echostr = $_GET['echostr'];
        echo $echostr;
        exit;
    }
    else{
        return '{"errcode":-1,"errmsg":"失败"}';
    }
}
//
//server.php?signature=45f607946b79157f9daffb2c22b6ca1a8af892a0&echostr=6312442253809811327&timestamp=1529458509&nonce=1617774481
$echostr = $_GET['echostr'];
echo $echostr;
exit;
