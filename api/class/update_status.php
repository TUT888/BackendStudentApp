<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: PUT');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-type: application/json; charset=utf-8');
    require_once ($_SERVER['DOCUMENT_ROOT']."/class_db.php");

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

    $raw = file_get_contents ('php://input');
    $data = json_decode ($raw);

    if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
        error_response(4, 'This method is not supported');
    }

    if ($data->id == null || $data->status == null) {
        error_response(1, 'Invalid input');
    }

    $id = $data->id;
    $status = intval($data->status);

    $result = update_status($id, $status);
    if ($result == 2) {
        error_response (3, 'Fail to update this class due to an unknown error id = ' . $id . ' , status = ' . $status);
    }
    else if ($result == 1) {
        error_response (0, 'none of the row is changed');
    }
    else success_response ($result, 'Status of this class is updated');

    
?>