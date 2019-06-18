<?php 
    error_reporting(1); 
    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT `id_book`, 
                            (SELECT name_hotel FROM hotel WHERE hotel.id_hotel = bookroom.hotel_id) 'name_hotel', 
                            `image`.`name_image` 'link_image',  
                            (SELECT name_room FROM room WHERE room.id_room = bookroom.room_id) 'name_room', 
                            bookroom.user_id, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`, `status`, `reviewed` 
                            FROM bookroom
                            LEFT JOIN review ON bookroom.hotel_id = review.hotel_id
                                                AND bookroom.room_id = review.room_id 
                                                AND bookroom.user_id = review.user_id
                            LEFT JOIN `image` ON `image`.`hotel_id` = `bookroom`.`hotel_id`
                            WHERE bookroom.user_id = :user 
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