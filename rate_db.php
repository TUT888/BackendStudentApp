<?php
    require_once ('db.php');
    function add_new_rating ($classID, $rate, $comment, $date)
    {
        $sql = 'insert into rate (classID, rate, comment, date) values (?, ?, ?, ?)';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('sdss', $classID, $rate, $comment, $date);

        $stm->execute();
        if ($stm->affected_rows == 1) {
            return $classID;
        }
        return 0;
    }
    
    function get_rating_by_classID($classID)
    {
        $sql = 'select * from rate where classID = ?';
        
        $conn = get_connection();
        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $classID);
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