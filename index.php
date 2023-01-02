<?php
    session_start();
    if (isset($_SESSION['chucvu'])) {
        $role = $_SESSION['chucvu'];
    } else {
        $role = 'home';
    }
	
	/*------ Kiểm tra đăng nhập ------*/
	//Không được truy cập trang này khi chưa đăng nhập
	require_once('db.php');
    if ($role === 'admin'){
        if (isset($_GET['controller'])) {
            $controller = 'admin/'.$_GET['controller'];
            if (isset($_GET['action'])) {
                $action = $_GET['action'];
            }else {
                $action = 'index';
            }
        }else {
            $controller = $role.'/home';
            $action = 'index';
        }
    } else if ($role === 'home'){
        //$controller = $role.'/home';
        $controller = 'home/login';
        $action = 'index';
    } else {
        if (isset($_GET['controller'])) {
            $controller = $_GET['controller'];
            if (isset($_GET['action'])) {
                $action = $_GET['action'];
            }else {
                $action = 'index';
            }
        } else {
            $controller ='home';
            $action = 'login';
        }
    }
	require_once('route.php');
   
?>

