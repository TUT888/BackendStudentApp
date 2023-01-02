<?php
    require_once ($_SERVER['DOCUMENT_ROOT']."/db.php");
      
    function getAll_db() {
        $sql = 'select * from user, tutor where user.phoneNumber = tutor.id';
        
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