<?php
    require_once ('db.php');
    function add_student ($id, $fields)
    {
        $sql = 'insert into student (id, fields) values (?, ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $id, $fields);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return $id ;
        }
        return 0;
    }

    function update_student_info ($id, $fields)
    {
        $sql = 'update student set fields = ? id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $fields, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }
    function get_student ($id)
    {
        $sql = 'select * from student where id = ?';
        
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

    function get_students_infor ()
    {
        $sql = 'select * from user, student where user.phoneNumber = student.id';
        
        $conn = get_connection();
        $result = $conn->query($sql);

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_search_students($key)
    {
        $sql = 'select * from student, user where student.id = user.phoneNumber and status = ? and ( fields like ? or user.area like ? or name like ? or phoneNumber like ? or area like ? or gender like ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $param = '%' . $key . '%';
        $status = 1;
        $stm->bind_param('issssss',$status, $param, $param, $param, $param, $param, $param);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }
?>