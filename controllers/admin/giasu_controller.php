<?php
    require_once('base_controller.php');
    require_once('models/GiaSu.php');

    $name = 'giasu';
    $action();

    function index() {
        $giasu = getAll_db();
        $data = array('giasu' => $giasu);
        render('index', $data);
    }

    function update() {
        
        if ( isset($_POST['status']) && isset($_POST['id']) ) {
            $mags = $_POST['id'];
            $status = (int)$_POST['status'];
            update_db($mags, $status);
            
            $giasu = getAll_db();
            $data = array('giasu' => $giasu);
            render('index', $data);
        } else {
            $giasu = getAll_db();
            $data = array('giasu' => $giasu);
            render('index', $data);
        }
    }
?>