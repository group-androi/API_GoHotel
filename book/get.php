<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = "";
	$array_where = array("1");

	if (!empty($_GET['id']) || !empty($_POST['id'])) {
		array_push($array_where, "id_book = :id");
	}
	if (!empty($_GET['phone']) || !empty($_POST['phone'])) {
		array_push($array_where, "phone = :phone");
	}
	if (!empty($_GET['status']) || !empty($_POST['status'])) {
		array_push($array_where, "status = :tus");
	}

	$where = "WHERE ".implode(" AND ", $array_where);

    $query = $db->prepare("SELECT SELECT `id_book`, 
                            (SELECT name_hotel FROM hotel WHERE id_hotel = hotel_id) 'name_hotel', 
                            (SELECT name_room FROM room WHERE id_room = room_id) 'name_room', 
                            `user_id`, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`, `status` 
                            FROM bookroom 
                            ".$where." 
                            ORDER BY date_start");
    if (!empty($_GET["id"]) || !empty($_POST['id'])) {
    	$key = isset($_GET['id']) ? $_GET['id'] : $_POST['id'];
    	$query->bindParam("id", $key);
    }
    if (!empty($_GET["phone"]) || !empty($_POST['phone'])) {
    	$key = isset($_GET['phone']) ? $_GET['phone'] : $_POST['phone'];
    	$query->bindParam("phone", $key);
    }
    if (!empty($_GET["status"]) || !empty($_POST['status'])) {
    	$key = isset($_GET['status']) ? $_GET['status'] : $_POST['status'];
    	$query->bindParam("tus", $key);
    }
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>