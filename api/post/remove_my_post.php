<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
    
    require_once ($_SERVER['DOCUMENT_ROOT']."/post_db.php");

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

    if (empty($_GET['postID'])) {
        error_response(4, 'Invalid post ID');
    }
    $id = $_GET['postID'];

    $result = remove_my_post($id);
    
    if ($result != 0){
        error_response(5, 'Remove post failed');
    }
    success_response($id, 'Remove post successfully');
?>