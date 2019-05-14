<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $array_parameter=array();
    if (!empty($_POST["hotel"])) {
        array_push($array_parameter, 'hotel_id = :hotel');
    }
    if (!empty($_POST['room'])) {
        array_push($array_parameter, 'room_id = :room');
    }
    if (!empty($_POST['address_image'])) {
        array_push($array_parameter, 'name_image = :image');
    }
    $where= " WHERE ".explode(" AND ", $array_parameter);

    $query = $db->prepare("SELECT name_image, hotel_id, room_id FROM image ".$where);
    if (!empty($_POST["hotel"])) {
        $query->bindParam("hotel", $_POST['hotel']);
    }
    if (!empty($_POST["room"])) {
        $query->bindParam("room", $_POST['room']);
    }
    if (!empty($_POST["address_image"])) {
        $query->bindParam("image", $_POST['address_image']);
    }
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>
