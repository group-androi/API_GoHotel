<?php 
    error_reporting(1); 
    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT `id_book`, 
                            (SELECT name_hotel FROM hotel WHERE id_hotel = hotel_id) 'name_hotel', 
                            (SELECT name_room FROM room WHERE id_room = room_id) 'name_room', 
                            `user_id`, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`, `status` 
                            FROM bookroom 
                            WHERE user_id = :user 
                            ORDER BY date_start");
    
    $token=GetIdUserFromToken();

    if ($token==null) {
        $token='*';
    }

    $query->bindParam("user", $token);
    
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>