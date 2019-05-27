<?php 

    //require_once("./../helper/checkToken.php");
    
if (!empty($_POST['hotel_id']) && 
	!empty($_POST['room_id']) && 
	!empty($_POST['phone'])) {
$temp="";
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO `bookroom`(`hotel_id`, `room_id`, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`) VALUES (:hotel, :room, :dateStart, :dateEnd, :price, :timeBook, :phone, :user)";
    
    $query = $db->prepare($sql);
    
    $query->bindParam("hotel", $_POST['hotel_id']);
    $query->bindParam("room", $_POST['room_id']);
    $query->bindParam("dateStart", $_POST['date_start']);
    $query->bindParam("dateEnd", $_POST['date_end']);
    $query->bindParam("price", $_POST['price']);
    $query->bindParam("timeBook", $_POST['time_book']);
    $query->bindParam("phone", $_POST['phone']);
    $query->bindParam("user", $_POST['info_user']);
    
    $query->execute();

    echo json_encode(array("message"=>"" ,"result"=>$db->lastInsertId()));

    $query->closeCursor();
    http_response_code(201);
} 
else {
	echo json_encode(array("message"=>"Data transmission is missing!!!", 'result'=>0));
    http_response_code(401);
	die();
}
 ?>