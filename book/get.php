<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = "";
	$array_where = array("1");

	if (isset($_GET['id']) || isset($_POST['id'])) {
		array_push($array_where, "id_book = :id");
	}
	if (isset($_GET['phone']) || isset($_POST['phone'])) {
		array_push($array_where, "phone = :phone");
	}
	if (isset($_GET['device_id']) || isset($_POST['device_id'])) {
		array_push($array_where, "device_id = :device");
	}
    if (isset($_GET['status']) || isset($_POST['status'])) {
        array_push($array_where, "status = ". (isset($_GET['status']) ? intval($_GET['status']) : intval($_POST['status'])));
    }
    if (isset($_GET['reviewed']) || isset($_POST['reviewed'])) {
        array_push($array_where, "reviewed = :rview");
    }
    if (isset($_GET['date_end']) || isset($_POST['date_end'])) {
        array_push($array_where, "str_to_date(date_end, '%Y-%m-%d') <= str_to_date(:dend , '%Y-%m-%d')");
    }

	$where = "WHERE ".implode(" AND ", $array_where);
    $sql="SELECT `id_book`, 
							bookroom.hotel_id, bookroom.room_id, 
                            (SELECT name_hotel FROM hotel WHERE hotel.id_hotel = bookroom.hotel_id) 'name_hotel', 
                            (SELECT `image`.`name_image` FROM image WHERE `image`.`hotel_id` = `bookroom`.`hotel_id` LIMIT 1) 'link_image', 
                            (SELECT name_room FROM room WHERE room.id_room = bookroom.room_id) 'name_room', 
                            bookroom.user_id, `date_start`, `date_end`, `price`, `time_book`, `phone`, `device_id`, `info_user_booked`, `status`, `reviewed`,
                            review.star, 
                            review.comment 
                            FROM bookroom
                            LEFT JOIN review ON bookroom.hotel_id = review.hotel_id
                                                AND bookroom.room_id = review.room_id 
                                                AND bookroom.user_id = review.user_id  
                            ".$where." 
                            ORDER BY date_start";
    //echo $sql;
    $query = $db->prepare($sql);
    if (isset($_GET["id"]) || isset($_POST['id'])) {
    	$key = isset($_GET['id']) ? $_GET['id'] : $_POST['id'];
    	$query->bindParam("id", $key);
    }
    if (isset($_GET["phone"]) || isset($_POST['phone'])) {
    	$key = isset($_GET['phone']) ? $_GET['phone'] : $_POST['phone'];
    	$query->bindParam("phone", $key);
    }
    if (isset($_GET["device_id"]) || isset($_POST['device_id'])) {
    	$key = isset($_GET['device_id']) ? $_GET['device_id'] : $_POST['device_id'];
    	$query->bindParam("device", $key);
    }
    /*if (isset($_GET["status"]) || isset($_POST['status'])) {
        $key = isset($_GET['status']) ? $_GET['status'] : $_POST['status'];
        $query->bindParam("tus", $key);
		//echo $key;
    }*/
    if (isset($_GET["reviewed"]) || isset($_POST['reviewed'])) {
        $key = isset($_GET['reviewed']) ? $_GET['reviewed'] : $_POST['reviewed'];
        $query->bindParam("rview", $key);
    }
    if (isset($_GET["date_end"]) || isset($_POST['date_end'])) {
        $key = isset($_GET['date_end']) ? $_GET['date_end'] : $_POST['date_end'];
        $query->bindParam("dend", $key);
		//echo $key;
    }
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>