<?php 

    require("./../helper/checkToken.php");

if ((empty($_GET['hotel_id']) && empty($_GET['hotel_id'])) || empty($_POST['user_id']) && empty($_POST['user_id'])) {
	echo json_encode(array("message"=>"Parameter null.","result"=>-1));
	die();
}    

try {

    $hotel = isset($_GET['hotel_id']) ? $_GET['hotel_id'] : $_POST['hotel_id'];
    $star = isset($_GET['star']) ? $_GET['star'] : $_POST['star'];
    $comment = isset($_GET['comment']) ? $_GET['comment'] : $_POST['comment'];
    $user = isset($_GET['user_id']) ? $_GET['user_id'] : $_POST['user_id'];

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "INSERT INTO `review`(`hotel_id`,`star`,`comment`,`user_id`) VALUES (:key, :star, :comment, :user)";
    $query = $db->prepare($sql);

    $query->bindParam("key", $hotel);
    $query->bindParam("star", $star);
    $query->bindParam("comment", $comment);
    $query->bindParam("user", $user);
    $query->execute();
    
    echo json_encode(array("result"=>1));
    
    $query->closeCursor();
    http_response_code(201);
 
} catch (Exception $e) {
    echo json_encode(array("result"=>0);
}
	?>