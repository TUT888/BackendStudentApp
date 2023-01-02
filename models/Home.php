<?php
    /// mấy hàm tương tác với db database
    require_once ($_SERVER['DOCUMENT_ROOT']."/db.php");
      
    function login($username, $password) {
        $conn = get_connection();
        $sql = 'select * from admin_account where username = ?';
        
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('s', $username);
        if ( !$stmt->execute() ) {
            return array('code'=>1, 'message'=>'Excute command failed');
        }
        $result = $stmt->get_result();
        if ( $result->num_rows==0 ) {
            return array('code'=>2, 'message'=>'Username does not exists');
        }
        $data = $result->fetch_assoc();
        $pw = $data['password'];
        if ($password != $pw) {
            return array('code'=>3, 'message'=>'Password is invalid');
        }
        
    
        $username = $data['username'];
        return array('code'=>0, 'message'=>'Login success', 'username' => $username);
    }

?>