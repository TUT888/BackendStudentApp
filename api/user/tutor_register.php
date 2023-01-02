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

    $body = file_get_contents("php://input");
    $inputArray = json_decode($body, true);
    
    if (empty($inputArray['phoneNumber']) || empty($inputArray['name']) || 
    empty($inputArray['address']) || empty($inputArray['birthday']) || 
    empty($inputArray['email']) || empty($inputArray['password']) ) { 
        error_response (1, 'Invalid input');
    }

    $phoneNumber = $inputArray['phoneNumber'];
    $name = $inputArray['name'];
    $status = intval($inputArray['status']);
    $address = $inputArray['address'];
    $gender = intval($inputArray['gender']);
    $birthday = $inputArray['birthday'];
    $email = $inputArray['email'];
    $password = $inputArray['password'];

    $id = add_user("tutor", $phoneNumber, $name, $status, $address, $gender, $birthday, $email, 'avatar.jpg', $password);
    if ($id == 0) {
        success_response ($id, 'Added new user');
    } else if ($id==3) {
        error_response (3, 'Add user failed');
    } else if ($id==2) {
        error_response (2, 'Add tutor failed');
    } else if ($id==1) {
        error_response (1, 'Add student failed');
    } else {
        error_response (4, 'Fail to add new product due to an unknown error');
    }
?>