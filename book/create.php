<?php 

    //require_once("./../helper/checkToken.php");
    
if (isset($_POST['hotel_id']) && 
	isset($_POST['room_id']) && 
	isset($_POST['phone'])) {
    error_reporting(1); 
    $temp="";
    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO `bookroom`(`hotel_id`, `room_id`, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`, `user_id`, `reviewed`, `device_id`) VALUES (:hotel, :room, :dateStart, :dateEnd, :price, :timeBook, :phone, :info, :user, :review, :device)";
    
    $query = $db->prepare($sql);
    
    $query->bindParam("hotel", $_POST['hotel_id']);
    $query->bindParam("room", $_POST['room_id']);
    $query->bindParam("dateStart", $_POST['date_start']);
    $query->bindParam("dateEnd", $_POST['date_end']);
    $query->bindParam("price", $_POST['price']);
    $query->bindParam("timeBook", $_POST['time_book']);
    $query->bindParam("phone", $_POST['phone']);
    $query->bindParam("info", $_POST['info_user']);
    $query->bindParam("review", $_POST['reviewed']);
    $query->bindParam("user", GetIdUserFromToken());
    $query->bindParam("device", $_POST['device_id']);
    
    $query->execute();

    echo json_encode(array("message"=>"" ,"result"=>$db->lastInsertId()));

    $query->closeCursor();
    http_response_code(200);
} 
else {
	echo json_encode(array("message"=>"Data transmission is missing!!!", 'result'=>0));
    http_response_code(401);
	die();
}
 ?>