<?php 
    error_reporting(1); 
    require_once("./../helper/connect_db.php");
    $Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT phone, 
                            (SELECT name_hotel FROM hotel WHERE id_hotel = hotel_id) 'name_hotel', 
                            id_book, 
                            (SELECT name_room FROM room WHERE id_room = room_id) 'name_room', 
                            time_book, 
                            date_start, 
                            date_end, 
                            price, 
                            status 
                            FROM bookroom 
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