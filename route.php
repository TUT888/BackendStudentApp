<?php
    $supported_controllers = array(
        'home/login' => array('index'),
        'admin/home' => array('index', 'logout'),
        'admin/hocvien' => array('index', 'update'),
        'admin/giasu' => array('index', 'update'),
    );
    if (!array_key_exists($controller, $supported_controllers) ||
        !in_array($action, $supported_controllers[$controller])) {
        $controller = 'admin/pages';
        $action = 'error';
    }
    
    include_once("controllers/" . $controller. "_controller.php"); // PagesController
    $className = $controller . '_controller.php'; 
    require_once('controllers/'.$className);

?>