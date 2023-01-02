<?php
    require_once('base_controller.php');
    require_once ('models/Home.php');
    
    //$name = 'login';
    $action();

    function index() {
        /*------ Kiểm tra username và password ------*/
        if (isset($_POST['username']) && isset($_POST['password'])) {
            $user = $_POST['username'];
            $pass = $_POST['password'];
            $result = login($user, $pass);
            if ( $result['code']!=0 ) {
                $data = array('result'=>$result);
                render('index', $data);
            } else {
                $data = array('username'=> $result['username']);
                $chucvu = "admin";
                
                $_SESSION['chucvu'] = 'admin';
                if (isset($result['username'])) {
                    $_SESSION['username'] = $result['username'];
                } 
                $data = array('chucvu'=>$chucvu);
                renderAdmin('index', $data);
                
            }
        }
        render('index');
    }
?>