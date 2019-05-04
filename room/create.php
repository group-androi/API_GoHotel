<?php 

    require("./../helper/checkToken.php");
    
if (!empty($_POST['name']) && 
	!empty($_POST['hotel'])) {

	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    
    $sql = "INSERT INTO room(name_room, price_per_day, image, count, status, hotel_id) VALUES (:name, :price, :image, :number_room, :status, :hotel)";
    
    $query = $db->prepare($sql);
    
    $db->bindParam("name", $_POST['name']);
    $db->bindParam("hotel", $_POST['hotel']);
    $db->bindParam("price", isset($_POST['price_1_day']) ? $_POST['price_1_day'] : "");
    $query->bindParam('image', isset($_FILES['image']) ? GetDirectoryCurrent().'files/'.$_FILES["image"]["name"] : "");
    $db->bindParam("number_room", isset($_POST['number_room']) ? $_POST['number_room'] : "");
    $db->bindParam("status", isset($_POST['status']) ? $_POST['status'] : "");
    $query->execute();

    echo json_encode(array("id_inserted"=>$db->lastInsertId()));

    $query->closeCursor();
    if (isset($_FILES['image'])) {
        move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]));
    }
    http_response_code(201);
} else {
	echo json_encode("error"=>"Data transmission is missing!!!"));

	return;
}
 ?>

 <?php //SELECT `id_room`, `name_room`, `price_per_day`, `image`, `count`, `status`, `hotel_id` FROM `room` WHERE 1 ( price_per_day, image, count, status, ) ?>