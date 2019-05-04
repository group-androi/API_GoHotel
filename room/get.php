<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

    $array_parameter = array();
    if (isset($_GET['id'])) {
        array_push($array_parameter, "id_room = :id");
    }
    if (isset($_GET['hotel'])) {
        array_push($array_parameter, "hotel_id = :hotel");
    }
    $where = " WHERE ".explode(" AND ", $array_parameter);


    $query = $db->prepare("SELECT `id_room` 'id', `name_room` 'name', `price_per_day`, `image`, `count` 'number_of_rooms', `status`, `hotel_id` FROM `room` ".$where);
    
    if (!empty($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    if (isset($_GET['hotel'])) {
        $query->bindParam("hotel", $_GET['hotel']);
    }

$query->execute();
    //$citys = $db->fetchAll();
    echo json_encode($query->fetchAll());
 ?>