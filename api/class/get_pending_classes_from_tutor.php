<?php
    header ('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
    require_once ($_SERVER['DOCUMENT_ROOT']."/class_db.php");
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

    $id = $_GET['tutorPhone'];
    if ($id === NULL){
        error_response(1, 'Please input the proper ID');
    }else{        
        $result = get_pending_classes_from_tutor($id);
        $idUsers = array();
        for ($i = 0; $i < count($result); $i++){
            $idUsers[$i] = $result[$i]['studentPhone'];
        }
        $name = array();
        for ($i = 0; $i < count($idUsers); $i++){
            $name[$i] = get_user($idUsers[$i])['name'];
        }
        $data = array();
        $data['class'] = $result;
        $data['name'] = $name;
        if ($data === ''){
            error_response(5, 'Get classes failed');
        }
        success_response($data, 'Get classes successfully');
    }
?>