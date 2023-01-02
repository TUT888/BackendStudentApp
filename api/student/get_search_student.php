<?php
    header ('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
    require_once ($_SERVER['DOCUMENT_ROOT']."/student_db.php");
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
    if ($key === NULL){
        error_response(1, 'Please input the proper key');
    }else{        
        $result = get_search_students($key);
        
        if ($result === ''){
            error_response(5, 'Get search result failed');
        }
        success_response($result, 'Get search result successfully');
    }
?>