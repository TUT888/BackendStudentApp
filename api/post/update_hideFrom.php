<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST');
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

    $body = file_get_contents("php://input");
    $inputArray = json_decode($body, true);
    
    if (empty($inputArray['id']) || empty($inputArray['id_user']) ) { 
        error_response (1, 'Invalid input');
    }

    $id = $inputArray['id'];
    $id_user = $inputArray['id_user'];

    $post = get_post($id);
    $hide_from = $post['hideFrom'];
    
    $id = update_hideFrom($id, $id_user, $hide_from);
    if ($id == 0) {
        error_response (3, 'Fail to update post due to an unknown error');
    } else {
        success_response ($id, 'Successfully updated post');
    }
?>