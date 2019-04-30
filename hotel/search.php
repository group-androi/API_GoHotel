<?php 
if (!empty($_GET['key'])) {
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

    $query = $db->prepare("SELECT id_hotel 'key', 
    							name_hotel 'name', 
    							address, 
    							(SELECT name_district FROM district WHERE district_id = id_district) 'district', 
    							(SELECT name_city FROM city WHERE city_id = id_city) 'city', 
    							price_room_per_day, 
    							latitude, 
    							longitude 
    						FROM hotel 
    						WHERE name_hotel = CONCAT('%',:keyword,'%')");
    $query->bindParam("keyword", $_GET['key']);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
} else {
    require("./get.php");
}
 ?>}
