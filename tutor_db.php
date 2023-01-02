<?php
    require_once ('db.php');

    function add_tutor ($id, $school, $academicLevel, $fields, $areas)
    {
        $sql = 'insert into tutor (id, school, academicLevel, fields, areas) values (?, ?, ?, ?, ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('sssss', $id, $school, $academicLevel, $fields, $areas);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return $id ;
        }
        return 0;
    }

    function update_tutor_info ($id, $school, $academicLevel, $fields, $areas)
    {
        $sql = 'update tutor set school = ?, academicLevel = ?, fields = ?, areas = ? where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('sssss', $school, $academicLevel, $fields, $areas, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }
    
    function get_tutor ($id)
    {
        $sql = 'select * from tutor where id = ?';
        
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

    function get_search_tutors($key)
    {
        $sql = 'select * from tutor, user where tutor.id = user.phoneNumber and status = ? and (school like ? or academicLevel like ? or fields like ? or user.area like ? or name like ? or phoneNumber like ? or areas like ? or gender like ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $param = '%' . $key . '%';
        $status = 1;
        $stm->bind_param('issssssss',$status, $param, $param, $param, $param, $param, $param, $param, $param);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }
?>