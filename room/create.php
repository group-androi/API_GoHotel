<?php 

    require_once("./../helper/checkToken.php");
    
if (isset($_POST['name']) && 
	isset($_POST['hotel_id'])) {

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO room(name_room, price_per_day, image, count, status, hotel_id) VALUES (:name, :price, :image, :number_room, :status, :hotel)";
    
    $query = $db->prepare($sql);
    
    $query->bindParam("name", $_POST['name']);
    $query->bindParam("hotel", $_POST['hotel_id']);
    $query->bindParam("price", $_POST['price_1_day']);

    $fileStr=isset($_FILES['image']) ? GetDirectoryCurrent().'files/'.$_FILES["image"]["name"] : "";
    $query->bindParam('image', $fileStr);
    $query->bindParam("number_room", $_POST['number_room']);
    $query->bindParam("status", $_POST['status']);
    $query->execute();

    echo json_encode(array("result"=>$db->lastInsertId()));

    $query->closeCursor();
    if (isset($_FILES['image'])) {
        move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]));
    }
    http_response_code(201);
} else {
	echo json_encode(array("result"=>-1));

	return;
}
 ?>