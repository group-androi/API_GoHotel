<?php 

    require("./../helper/checkToken.php");
    
if (!empty($_POST['name']) && 
	!empty($_POST['address']) && 
	!empty($_POST['district_id']) && 
	!empty($_POST['city_id'])) {
$temp="";
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO `hotel`(`name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`) VALUES (:nameHotel, :address, :districtId, :cityId, :price1Day, :latitude, :longitude)";
    
    $query = $db->prepare($sql);
    
    $query->bindParam("nameHotel", $_POST['name']);
    $query->bindParam("address", $_POST['address']);
    $query->bindParam("districtId", $_POST['district_id']);
    $query->bindParam("cityId", $_POST['city_id']);

    if (isset($_POST['price_1_day'])) {
        $temp=$_POST['price_1_day'];
    }else{
        $temp="";
    }
    $query->bindParam("price1Day", $temp);
    if (isset($_POST['latitude'])) {
        $temp=$_POST['latitude'];
    }else{
        $temp="";
    }
    $query->bindParam("latitude", $temp);
    if (isset($_POST['longitude'])) {
        $temp=$_POST['longitude'];
    }else{
        $temp="";
    }
    $query->bindParam("longitude", $temp);
    
    $query->execute();

    echo json_encode(array("id_inserted"=>$db->lastInsertId()));

    $query->closeCursor();
    http_response_code(201);
} 
else {
	echo json_encode(array("error"=>"Data transmission is missing!!!"));
    http_response_code(401);
	return;
}
 ?>