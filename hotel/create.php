<?php 

    require("./../helper/checkToken.php");
    
if (!empty($_POST['name']) && 
	!empty($_POST['address']) && 
	!empty($_POST['district_id']) && 
	!empty($_POST['city_id'])) {

	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    
    $sql = "INSERT INTO `hotel`(`name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`) VALUES (:nameHotel, :address, :districtId, :cityId, :price1Day, :latitude, :longitude)";
    
    $query = $db->prepare($sql);
    
    $db->bindParam("nameHotel", $_POST['name']);
    $db->bindParam("address", $_POST['address']);
    $db->bindParam("districtId", $_POST['district_id']);
    $db->bindParam("cityId", $_POST['city_id']);
    $db->bindParam("price1Day", $_POST['price_1_day']);
    $db->bindParam("latitude", (!empty($_POST['latitude'])) ? $_POST['latitude'] : 'null');
    $db->bindParam("longitude", (!empty($_POST['longitude'])) ? $_POST['longitude'] : 'null');
    
    $query->execute();

    echo json_encode(array("id_inserted"=>$db->lastInsertId()));

    $query->closeCursor();
} else {
	echo json_encode("error"=>"Data transmission is missing!!!"));

	return;
}
 ?>