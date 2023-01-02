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

    
    
    if (empty($inputArray['id']) || empty($inputArray['title']) || 
    empty($inputArray['idUser']) || 
    empty($inputArray['subject']) || empty($inputArray['field']) || 
    empty($inputArray['dateTimesLearning']) || empty($inputArray['learningPlaces']) ||
    empty($inputArray['method']) || empty($inputArray['tuition']) || 
    empty($inputArray['description']) || empty($inputArray['postDate']) ) { 
        error_response (1, 'Invalid input');
    }

    $id = $inputArray['id'];
    $title = $inputArray['title'];
    $status = intval($inputArray['status']);
    $idUser = $inputArray['idUser'];
    $subject = $inputArray['subject'];
    $field = $inputArray['field'];
    $dateTimesLearning = $inputArray['dateTimesLearning'];
    $learningPlaces = $inputArray['learningPlaces'];
    $method = $inputArray['method'];
    $tuition = intval($inputArray['tuition']);
    $description = $inputArray['description'];
    $postDate = $inputArray['postDate'];
    $hideFrom = "";

    $id = add_new_post($id, $title, $status, $idUser, $subject, $field, $dateTimesLearning, $learningPlaces, $method, $tuition, $description, $postDate, $hideFrom);
    if ($id == 0) {
        error_response (3, 'Fail to add new product due to an unknown error');
    } else {
        success_response ($id, 'Added new product');
    }
?>