<?php
    header('Access-Control-Allow-Methods: POST');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
    require_once ($_SERVER['DOCUMENT_ROOT']."/rate_db.php");

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

    if (empty($_POST['classID'])) { 
        error_response (1, 'Invalid input classID');
    }
    if (empty($_POST['rate'])  ) { 
        error_response (1, 'Invalid input rate');
    }
    if (empty($_POST['date'])  ) { 
        error_response (1, 'Invalid input date');
    }

    $classID = $_POST['classID'];
    $rate = floatval($_POST['rate']);
    $comment = $_POST['comment'];
    $date = $_POST['date'];

    $id = add_new_rating($classID, $rate, $comment, $date);
    if ($id == 0) {
        error_response (4, 'Fail to add new rating due to an unknown error');
    }
    else success_response ($id, 'Added new rating');
    
?>