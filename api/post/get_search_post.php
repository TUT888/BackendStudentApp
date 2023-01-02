<?php
    header ('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
    require_once ($_SERVER['DOCUMENT_ROOT']."/post_db.php");
    require_once ($_SERVER['DOCUMENT_ROOT']."/user_db.php");


    function error_response($code, $message){
        $res = array();
        $res['code'] = $code;
        $res['message'] = utf8_encode($message);
        
        die (json_encode($res));
    }

    function success_response($data, $message){
        $res = array();
        $res['code'] = 0;
        $res['message'] = utf8_encode($message);
        $res['data'] = $data;
        
        echo json_encode($res);
    }
    if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
        error_response(4, 'This method is not supported');
    }

    $key = $_GET['key'];
    $role = $_GET['role'];     
    if ($key === NULL){
        error_response(1, 'Please input the proper key');
    }
    else if ($_GET['user_id'] === NULL || $_GET['user_id'] === ''){
        $result = get_search_posts_no_userid($key, $role);
        
        $idUsers = array();
        for ($i = 0; $i < count($result); $i++){
            $idUsers[$i] = $result[$i]['idUser'];
        }
        $avatar = array();
        $name = array();
        for ($i = 0; $i < count($idUsers); $i++){
            $name[$i] = get_user($idUsers[$i])['name'];
            $avatar[$i] = get_user($idUsers[$i])['avatar'];
        }
        $data = array();
        $data['post'] = $result;
        $data['name'] = $name;
        $data['avatar'] = $avatar;

        if ($result === '' ||$name === ''){
            error_response(5, 'Get search result failed');
        }
        success_response($data, 'Get search result successfully');
    }else{  
        $user_id = $_GET['user_id']; 
        $result = get_search_posts($key, $user_id, $role);
        
        $idUsers = array();
        for ($i = 0; $i < count($result); $i++){
            $idUsers[$i] = $result[$i]['idUser'];
        }
        $avatar = array();
        $name = array();
        for ($i = 0; $i < count($idUsers); $i++){
            $name[$i] = get_user($idUsers[$i])['name'];
            $avatar[$i] = get_user($idUsers[$i])['avatar'];
        }
        $data = array();
        $data['post'] = $result;
        $data['name'] = $name;
        $data['avatar'] = $avatar;

        if ($result === '' ||$name === ''){
            error_response(5, 'Get search result failed');
        }
        success_response($data, 'Get search result successfully');
    }
?>