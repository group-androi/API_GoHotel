<?php 

    require("./../helper/checkToken.php");
if (empty($_POST['hotel']) ||
    empty($_POST['utility'])) {
	echo json_encode(array("message"=>"Parameter null."));
http_response_code(400);
	die();
}    
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    if (empty($_POST['room'])) {
        $sql = "INSERT INTO `utilityroom`(`utility_id`, `hotel_id`) VALUES (:utility,:hotel)";
    } else {
        $sql = "INSERT INTO `utilityroom`(`utility_id`, `hotel_id`, room_id) VALUES (:utility,:hotel,:room)";
    }
    $query = $db->prepare($sql);
    $query->bindParam("utility", $_POST['utility']);
    $query->bindParam("hotel",$_POST['hotel']);
    if (isset($_POST['room'])) {
        $query->bindParam("room", $_POST['room']);
    }
    $query->execute();
    
    $query->closeCursor();
    http_response_code(200);
 ?>