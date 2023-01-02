<?php
    require_once('base_controller.php');
    require_once('models/HocVien.php');

    $name = 'hocvien';
    $action();

    function index() {
        $hocvien = getAll_db();
        $data = array('hocvien' => $hocvien);
        render('index', $data);
    }
    function update() {
        
        if ( isset($_POST['status']) && isset($_POST['id']) ) {
            $mahv = $_POST['id'];
            $status = (int)$_POST['status'];
            update_db($mahv, $status);
            
            $hocvien = getAll_db();
            $data = array('hocvien' => $hocvien);
            render('index', $data);
        } else {
            $hocvien = getAll_db();
            $data = array('hocvien' => $hocvien);
            render('index', $data);
        }
    }
   
?>