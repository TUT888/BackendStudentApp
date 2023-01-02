<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Content-Type: application/json; charset=UTF-8');
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

   
    $body = file_get_contents("php://input");
    $inputArray = json_decode($body, true);

    if (empty($inputArray['id'])) { 
        error_response (1, 'Invalid input id');
    }
    if (empty($inputArray['className'])  ) { 
        error_response (1, 'Invalid input className');
    }
    if (empty($inputArray['tutorPhone'])  ) { 
        error_response (1, 'Invalid input tutorPhone');
    }
    if (empty($inputArray['studentPhone'])  ) { 
        error_response (1, 'Invalid input studentPhone');
    }
    if (empty($inputArray['place'])  ) { 
        error_response (1, 'Invalid input place');
    }
    if (empty($inputArray['fee'])  ) { 
        error_response (1, 'Invalid input fee');
    }
    if (empty($inputArray['dateTime'])  ) { 
        error_response (1, 'Invalid input dateTime');
    }
    if (empty($inputArray['startDate'])  ) { 
        error_response (1, 'Invalid input startDate');
    }
    if (empty($inputArray['endDate'])  ) { 
        error_response (1, 'Invalid input endDate');
    }
    if (empty($inputArray['method'])  ) { 
        error_response (1, 'Invalid input method');
    }
    if (empty($inputArray['subject'])  ) { 
        error_response (1, 'Invalid input subject');
    }
    if (empty($inputArray['field'])  ) { 
        error_response (1, 'Invalid input field');
    }

    $id = $inputArray['id'];
    $className = $inputArray['className'];
    $tutorPhone = $inputArray['tutorPhone'];
    $studentPhone = $inputArray['studentPhone'];
    $place = $inputArray['place'];
    $status = intval($inputArray['status']);
    $fee = intval($inputArray['fee']);
    $dateTime = $inputArray['dateTime'];
    $startDate = $inputArray['startDate'];
    $endDate = $inputArray['endDate'];
    $method = $inputArray['method'];
    $subject = $inputArray['subject'];
    $field = $inputArray['field'];

    $id = add_new_class($id, $className, $tutorPhone, $studentPhone, $place, $status, $fee, $dateTime, $startDate, $endDate, $method, $subject, $field);
    if ($id == 1) {
        error_response (4, 'An error occured when checking ID');
    } else if ($id == 2) {
        error_response (4, 'Fail to add new class: Invalid student ID');
    } else if ($id == 3) {
        error_response (4, 'Fail to add new class: Invalid tutor ID');
    } else if ($id == 0) {
        success_response ($id, 'Added new class');
    } else {
        error_response (4, 'Fail to add new class due to an unknown error');
    }
    
?>