<?php 

    require_once("./../helper/checkToken.php");
if (empty($_POST['hotel_id']) ||
    empty($_POST['utility_id'])) {
	echo json_encode(array("message"=>"Parameter null.", "result"=>0));
    http_response_code(400);
	die();
}    
try {
    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    if (empty($_POST['room_id'])) {
        $sql = "INSERT INTO `utilityroom`(`utility_id`, `hotel_id`) VALUES (CAST(:utility AS UNSIGNED),CAST(:hotel AS UNSIGNED))";
    } else {
        $sql = "INSERT INTO `utilityroom`(`utility_id`, `hotel_id`, `room_id`) VALUES (CAST(:utility AS UNSIGNED), CAST(:hotel AS UNSIGNED), CAST(:room AS UNSIGNED))";
    }
    $query = $db->prepare($sql);
    $query->bindParam("utility", $_POST['utility_id'], PDO::PARAM_INT);
    $query->bindParam("hotel", $_POST['hotel_id'], PDO::PARAM_INT);

    if (isset($_POST['room_id'])) {
        $query->bindParam("room", $_POST['room_id'], PDO::PARAM_INT);
    }
    
    $query->execute();

    echo json_encode(array("message"=>"Added success.", "result"=>1));
    
    $query->closeCursor();
    http_response_code(200);

} catch (Exception $e) {
    echo json_encode(array("message"=>"Added failure.", "result"=>0));
    
    $query->closeCursor();
    http_response_code(200);
        
}
	 ?>