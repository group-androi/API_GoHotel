<?php 

    // require_once("./../helper/checkToken.php");
    try {
        if(isset($_POST['id'])){
    $array_set = array('id_book = :id');
    if (isset($_POST['hotel_id_new'])) {
        array_push($array_set, '`hotel_id`=:hotel');
    }
    if (isset($_POST['room_id_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['date_start_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['date_end_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['price_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['time_book_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['phone_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['info_user_new'])) {
        array_push($array_set, '`room_id`=:room');
    }
    if (isset($_POST['status']) && is_numeric($_POST['status'])) {
        array_push($array_set, '`status`=:tus');
    }
    $where ='';
    if (count($array_set)>0) {
        $where = implode(", ", $array_set);
    }

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "UPDATE `bookroom` 
            SET ".$where." 
            WHERE `id_book` = :id";
    $query = $db->prepare($sql);


    if (isset($_POST['hotel_id_new'])) {
        $query->bindParam("hotel", $_POST['hotel_id_new']);
    }
    if (isset($_POST['room_id_new'])) {
        $query->bindParam("room", $_POST['room_id_new']);
    }
    if (isset($_POST['date_start_new'])) {
        $query->bindParam("dateStart", $_POST['date_start_new']);
    }
    if (isset($_POST['date_end_new'])) {
        $query->bindParam("price", $_POST['price_new']);
    }
    if (isset($_POST['price_new'])) {
        $query->bindParam("price", $_POST['price_new']);
    }
    if (isset($_POST['time_book_new'])) {
        $query->bindParam("timeBook", $_POST['time_book_new']);
    }
    if (isset($_POST['phone_new'])) {
        $query->bindParam("phone", $_POST['phone_new']);
    }
    if (isset($_POST['info_user_new'])) {
        $query->bindParam("user", $_POST['info_user_new']);
    }
    if (isset($_POST['status']) && is_numeric($_POST['status'])) {
        $query->bindParam("tus", $_POST['status']);
    }
    $query->bindParam("id", $_POST['id']);

    $query->execute();
    echo json_encode(array("result"=>1));
    $query->closeCursor();
}
        
    } catch (Exception $e) {
    echo json_encode(array("result"=>0));       
    }

 ?>