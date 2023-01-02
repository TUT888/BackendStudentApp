<?php
    require_once ('db.php');
    require_once('post_db.php');
    
    function add_new_class ($id, $className, $tutorPhone, $studentPhone, $place, $status, $fee, $dateTime, $startDate, $endDate, $method, $subject, $field)
    {
        $sql = 'select * from student where id = ?';
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $studentPhone);
        if ( !$stm->execute() ) {
            return 1;
        }
        $result = $stm->get_result();
        if ( $result->num_rows==0 ) {
            return 2;
        }

        $sql = 'select * from tutor where id = ?';
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $tutorPhone);
        if ( !$stm->execute() ) {
            return 1;
        }
        $result = $stm->get_result();
        if ( $result->num_rows==0 ) {
            return 3;
        }
        
        $sql = 'insert into class (id, className, tutorPhone, studentPhone, place, status, fee, dateTime, startDate, endDate, method, subject, field) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        $stm = $conn->prepare($sql);
        $stm->bind_param('sssssiissssss', $id, $className, $tutorPhone, $studentPhone, $place, $status, $fee, $dateTime, $startDate, $endDate, $method, $subject, $field);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return change_post_status($id, 1);
        }
        return $id;
    }

    function update_status ($id, $status)
    {
        $sql = 'update class set status = ? where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('is', $status, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }
    function get_classes($id)
    {
        $sql = 'select * from class where studentPhone = ? and status <> -1 and status <> -2';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_classes_from_tutor($id)
    {
        $sql = 'select * from class where tutorPhone = ? and status <> -1 and status <> -2';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_class_by_id($classId)
    {
        $sql = 'select * from class where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $classId);
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

    function get_active_classes($id)
    {
        $sql = 'select * from class where studentPhone = ? and status = 0';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_active_classes_from_tutor($id)
    {
        $sql = 'select * from class where tutorPhone = ? and status = 0';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_class_rated_from_tutor($tutorPhone)
    {
        $sql = 'select * from class where tutorPhone = ? and status = 2';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $tutorPhone);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_pending_classes($id)
    {
        $sql = 'select *, class.status as class_status, post.status as post_status from class, post where class.id = post.id and studentPhone = ? and class.status = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $status = -1;
        $stm->bind_param('si', $id, $status);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_pending_classes_from_tutor($id)
    {
        $sql = 'select *, class.status as class_status, post.status as post_status from class, post where class.id = post.id and tutorPhone = ? and class.status = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $status = -1;
        $stm->bind_param('si', $id, $status);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }
?>