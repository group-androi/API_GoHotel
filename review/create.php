<?php 

    require("./../helper/checkToken.php");

if (!((isset($_GET['hotel_id']) && isset($_GET['user']) && isset($_GET['room_id'])) 
    || (isset($_POST['hotel_id']) && isset($_POST['user']) && isset($_POST['room_id'])))) {
	echo json_encode(array("message"=>"Parameter null.","result"=>-1));
	die();
}    

try {

    $hotel = isset($_GET['hotel_id']) ? $_GET['hotel_id'] : $_POST['hotel_id'];
    $star = isset($_GET['star']) ? $_GET['star'] : isset($_POST['star']) ? $_POST['star'] : '';
    $comment = isset($_GET['comment']) ? $_GET['comment'] : isset($_POST['comment']) ? $_POST['comment'] : '';
    $user = isset($_GET['user']) ? $_GET['user'] : $_POST['user'];
    $room = isset($_GET['room_id']) ? $_GET['room_id'] : $_POST['room_id'];

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "INSERT INTO `review`(`hotel_id`,`room_id`,`star`,`comment`,`user_id`) VALUES (:key, :room, :star, :comment, :user)";
    $query = $db->prepare($sql);

    $query->bindParam("key", $hotel);
    $query->bindParam("star", $star);
    $query->bindParam("comment", $comment);
    $query->bindParam("user", $user);
    $query->bindParam("room", $room);
    $query->execute();
    
    echo json_encode(array("result"=>1));
    
    $query->closeCursor();
    http_response_code(200);
 
} catch (Exception $e) {
    echo json_encode(array("result"=>0));
}
	?>
