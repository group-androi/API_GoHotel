<?php 
    error_reporting(1); 
    require_once("./../helper/connect_db.php");
    $Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT phone, 
                            (SELECT name_hotel FROM hotel WHERE hotel.id_hotel = bookroom.hotel_id) 'name_hotel', 
                            id_book, 
                            (SELECT name_room FROM room WHERE room.id_room = bookroom.room_id) 'name_room', 
                            time_book, 
							device_id, 
                            date_start, 
                            date_end, 
                            `image`.`name_image` 'link_image',  
                            price, 
                            status, 
                            `reviewed`, 
                            review.star, 
                            review.comment 
                            FROM bookroom
                            LEFT JOIN review ON bookroom.hotel_id = review.hotel_id
                                                AND bookroom.room_id = review.room_id 
                                                AND bookroom.user_id = review.user_id
                            LEFT JOIN `image` ON `image`.`hotel_id` = `bookroom`.`hotel_id`
                            WHERE id_book = :key 
                            ORDER BY date_start");
    
    $token = isset($_GET['key']) ? $_GET['key'] : $_POST['key'];

    if ($token==null) {
        $token='*';
    }

    $query->bindParam("key", $token);
    
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>