<?php
    require_once ($_SERVER['DOCUMENT_ROOT']."/db.php");

    function get_db($mahv) {
        $sql = "select * from student, user where student.id = user.phoneNumber and id = ?";
        $conn = get_connection();
        
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('s', $mahv);
        
        if ( !$stmt->execute() ) {
            return array('code'=>1, 'message'=>'Execute command failed');
        }
        $result = $stmt->get_result();
        if ( $result->num_rows==0 ) {
            return array('code'=>2, 'message'=>'MaHV does not exists');
        }
        $data = $result->fetch_assoc();
        return array('code'=>0, 'message'=>'Get data successful', 'data'=>$data);
    }
    function getAll_db() {
        $sql = 'select * from user, student where user.phoneNumber = student.id';
        
        $conn = get_connection();
        $result = $conn->query($sql);

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return array('code'=>0, 'message'=>'', 'data'=>$data);
    }
    function update_db($mahv, $status) {
        $sql = 'update user set status = ? where phoneNumber = ?';
        $conn = get_connection();
         
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('is', $status, $mahv);
        if ( !$stmt->execute() ) {
            return array('code'=>1, 'message'=>'Excute command failled');
        }
        return array('code'=>0, 'message'=>'Update successful');
    }
?>