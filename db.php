<?php
    function get_connection() {
        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $db = 'giasuapp';
        
        $conn = new mysqli ($host, $user, $pass, $db);
        $conn->set_charset("utf8");

        if ($conn->connect_error) {
            die('Cannot connect:' . $conn->connect_error);
        }

        return $conn;
    }
?>