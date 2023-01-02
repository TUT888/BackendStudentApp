<?php
    require_once ('db.php');
    
    function add_user ($role, $phoneNumber, $name, $status, $area, $gender, $birthday, $email, $avatar, $password)
    {
        $sql = 'insert into user (phoneNumber, name, status, area, gender, birthday, email, avatar, password) values (?, ?, ?, ?, ?, ?, ?, ?, ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ssisissss', $phoneNumber, $name, $status, $area, $gender, $birthday, $email, $avatar, $password);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            $emptyField = "Other";
            if ($role==='student') {
                $sql = "insert into student (id, fields) values (?, ?)";
    
                $conn = get_connection();
                $stm = $conn->prepare($sql);
                $stm->bind_param('ss', $phoneNumber, $emptyField);
    
                $stm->execute();
                if ($stm->affected_rows == 1) {
                    return 0;
                }
                return 1;
            }
            if ($role==='tutor') {
                $sql = "insert into tutor (id, fields) values (?, ?)";
        
                $conn = get_connection();
                $stm = $conn->prepare($sql);
                $stm->bind_param('ss', $phoneNumber, $emptyField);
    
                $stm->execute();
                if ($stm->affected_rows == 1) {
                    return 0;
                }
                return 2;
            } 
        }
        return 3;
    }

    function update_user_info ($phoneNumber, $name, $area, $gender, $birthday, $email, $avatar)
    {
        $sql = 'update user set name = ?, area = ?, gender = ?, birthday = ?, email = ?, avatar = ? where phoneNumber = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ssissss', $name, $area, $gender, $birthday, $email, $avatar, $phoneNumber);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }

    function change_password ($phoneNumber, $password)
    {
        $sql = 'update user set password = ? where phoneNumber = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $password, $phoneNumber);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 0;
        }
        if ($stm->affected_rows == 0) {
            return 1;
        }
        return 2;
    }

    function lock_account ($phoneNumber)
    {
        $sql = 'update user set status = -1 where phoneNumber = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $phoneNumber);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }

    function verified_account ($phoneNumber)
    {
        $sql = 'update user set status = 1 where phoneNumber = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $phoneNumber);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }

    function login ($id, $password)
    {
        $sql = 'select * from user where phoneNumber = ? and password = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $id, $password);

        if ( !$stm->execute() ) {
            return array('code'=>1, 'message'=>'Execute command failed');
        }
        
        $result = $stm->get_result();
        if ( $result->num_rows==0 ) {
            return array('code'=>2, 'message'=>'Account does not exists or password is incorrect');
        }
        $data = $result->fetch_assoc();
        if ($data != null) {
            return array('code'=>0, 'message'=>'Password is correct', 'data'=>$data);
        }
    }

    function login_student ($id, $password)
    {
        $sql = 'select * from student where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        if ( !$stm->execute() ) {
            return array('code'=>1, 'message'=>'Execute command failed');
        }
        
        $result = $stm->get_result();
        if ( $result->num_rows==0 ) {
            return array('code'=>2, 'message'=>'Student account does not exists');
        }
        return login ($id, $password);
    }

    function login_tutor ($id, $password)
    {
        $sql = 'select * from tutor where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        if ( !$stm->execute() ) {
            return array('code'=>1, 'message'=>'Execute command failed');
        }
        
        $result = $stm->get_result();
        if ( $result->num_rows==0 ) {
            return array('code'=>2, 'message'=>'Tutor account does not exists');
        }
        return login ($id, $password);
    }

    function get_user ($id)
    {
        $sql = 'select * from user where phoneNumber = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        $stm->execute();

        if ($stm->execute() == 1) {
            $result = $stm->get_result();
            $data = $result->fetch_assoc();
            if ($data != null) {
                return $data;
            }
        }
        return 0;
    }
?>