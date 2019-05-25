<?php 

    require_once("./../helper/checkToken.php");
    
if (!empty($_POST['name']) && 
	!empty($_POST['address']) && 
	!empty($_POST['district_id']) && 
	!empty($_POST['city_id'])) {
$temp="";
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO `hotel`(`name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`, `check_in`, `check_out`) VALUES (:nameHotel, :address, :districtId, :cityId, :price1Day, :latitude, :longitude, :checkIn, :checkOut)";
    
    $query = $db->prepare($sql);
    
    $query->bindParam("nameHotel", $_POST['name']);
    $query->bindParam("address", $_POST['address']);
    $query->bindParam("districtId", $_POST['district_id']);
    $query->bindParam("cityId", $_POST['city_id']);
    $query->bindParam("price1Day", $_POST['price_1_day']);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->bindParam("checkIn", $_POST['check_in']);
    $query->bindParam("checkout", $_POST['check_out']);
    
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