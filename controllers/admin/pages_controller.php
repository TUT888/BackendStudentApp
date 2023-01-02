<?php
    $action();
    
    function error() {
        ob_start();
        $message = "URL Not Found";
        require_once('views/admin/pages/error.php');
        $content = ob_get_clean();

        require_once('views/layout/template.php');
    }
?>