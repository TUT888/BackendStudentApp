<?php
    require_once ('db.php');

    function add_new_post ($id, $title, $status, $idUser, $subject, $field, $dateTimesLearning, $learningPlaces, $method, $tuition, $description, $postDate, $hideFrom)
    {
        $role = get_role_from_id($idUser);
        if ($role==2) {
            return 0;
        }

        $sql = 'insert into post (id, title, status, idUser, subject, field, dateTimesLearning, learningPlaces, method, tuition, description, postDate, hideFrom, role) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ssissssssisssi', $id, $title, $status, $idUser, $subject, $field, $dateTimesLearning, $learningPlaces, $method, $tuition, $description, $postDate, $hideFrom, $role);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return $id ;
        }
        return 0;
    }

    function get_role_from_id ($id) {
        $sql = 'select * from student where id = ?';
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        $stm->execute();
        if ($stm->execute() == 1) {
            $result = $stm->get_result();
            $data = $result->fetch_assoc();
            if ($data != null) {
                return 0;
            }
        }

        $sql = 'select * from tutor where id = ?';
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        $stm->execute();
        if ($stm->execute() == 1) {
            $result = $stm->get_result();
            $data = $result->fetch_assoc();
            if ($data != null) {
                return 1;
            }
        }
        return 2;
    }

    function update_post ($id, $title, $status, $subject, $field, $dateTimesLearning, $learningPlaces, $method, $tuition, $description, $postDate)
    {
        $sql = 'update post set title = ?, status = ?, subject = ?, field = ?, dateTimesLearning = ?, learningPlaces = ?, method = ?, tuition = ?, description = ?, postDate = ? where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('sisssssisss', $title, $status, $subject, $field, $dateTimesLearning, $learningPlaces, $method, $tuition, $description, $postDate, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }

    function remove_post ($id)
    {
        $sql = 'delete from post where id=?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        $stm->execute();
        return $stm->affected_rows === 1;
    }

    function remove_my_post ($id)
    {
        $sql = 'update post set status = -1 where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 0;
        }
        return 1;
    }

    function change_post_status ($id, $status)
    {
        $sql = 'update post set status = ? where id = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('is', $status, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 0;
        }
        return 1;
    }

    function get_my_posts($id)
    {
        $sql = 'select * from post where idUser = ?';
        
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
    
    function get_all_posts()
    {
        $sql = 'select * from post';
        
        $conn = get_connection();
        $result = $conn->query($sql);

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_search_posts($key, $user_id, $role)
    {
        $sql = 'select * from post where status = ? and role = ? and post.hideFrom not like ? and ( title like ? or subject like ? or field like ? or dateTimesLearning like ? or learningPlaces like ? or method like ? or tuition like ? or description like ? ) ';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $id_post_hide = '%' . $user_id . '%';
        $param = '%' . $key . '%';
        $status = 0;
        $stm->bind_param('iisssssssss',$status, $role, $id_post_hide, $param, $param, $param, $param, $param, $param, $param, $param);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    function get_search_posts_no_userid($key, $role)
    {
        $sql = 'select * from post where status = ? and role = ? and ( title like ? or subject like ? or field like ? or dateTimesLearning like ? or learningPlaces like ? or method like ? or tuition like ? or description like ? ) ';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $param = '%' . $key . '%';
        $status = 0;
        $stm->bind_param('iissssssss',$status, $role, $param, $param, $param, $param, $param, $param, $param, $param);
        $stm->execute();
        $result =  $stm->get_result();

        $data = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        return $data;
    }

    

    function update_hideFrom ($id, $id_user, $hide_from)
    {
        $sql = 'update post set hideFrom = ? where id = ?';
        if ($hide_from == null || $hide_from == '')
            $hide_from = $id_user;
        else
            $hide_from = $hide_from .', '. $id_user;
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $hide_from, $id);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return 1;
        }
        if ($stm->affected_rows == 0) {
            return 2;
        }
        return 0;
    }

    function get_post($id)
    {
        $sql = 'select * from post where id = ?';
        
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
