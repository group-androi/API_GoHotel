<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();


    $array_param = array();
    if (isset($_GET['utility'])) {
        array_push($array_param, "utility_id = :utility");
    }
    if (isset($_GET['hotel'])) {
        array_push($array_param, "hotel_id = :hotel");
    }
    if (isset($_GET['room'])) {
        array_push($array_param, "room_id = :room");
    }
    $where = " WHERE ".implode(" AND ", $array_param);

    require("./../helper/connect_db.php");
    $db = (new Database())->connect();
    $query = $db->prepare("SELECT `utility_id`, `hotel_id`, `room_id` FROM `utilityroom`".$where);
    if (isset($_GET['utility'])) {
        $query->bindParam("utility", $_GET['utility']);
    }
    if (isset($_GET['hotel'])) {
        $query->bindParam("hotel", $_GET['hotel']);
    }
    if (isset($_GET['room'])) {
        $query->bindParam("room", $_GET['room']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>