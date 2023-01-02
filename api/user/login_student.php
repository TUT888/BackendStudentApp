<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
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

    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        error_response(4, 'This method is not supported');
    }

    $id = $_POST['phoneNumber'];
    $pass = $_POST['password'];
    if ($id === NULL || $pass === NULL){
        error_response(1, 'Please input the proper ID and Password');
    }else{        
        $result = login_student($id, $pass);
        
        if ($result['code'] != 0){
            error_response(5, $result['message']);
        }
        success_response($result['data'], 'Get user info successfully');
    }
?>