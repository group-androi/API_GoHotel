<?php 

    require_once("./../helper/checkToken.php");
    
    $array_parameter = array("1");
    if (isset($_GET['id'])) {
        array_push($array_parameter, "id_room = :id");
    }
    if (isset($_GET['hotel'])) {
        array_push($array_parameter, "hotel_id = :hotel");
    }
    $where = " WHERE ".implode(" AND ", $array_parameter);

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM room ".$where);
    if (!empty($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    if (isset($_GET['hotel'])) {
        $query->bindParam("hotel", $_GET['hotel']);
    }
    $query->execute();
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    $query->closeCursor();

    http_response_code(200);
 ?>