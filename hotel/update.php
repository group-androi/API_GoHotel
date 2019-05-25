<?php 

    require_once("./../helper/checkToken.php");
    
if(isset($_POST['id']))
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "UPDATE `hotel` 
            SET `name_hotel` = :name, 
                `address` = :address, 
                `district_id` = :districtId, 
                `city_id` = :cityId, 
                `price_room_per_day` = :price1Day, 
                `latitude` = :latitude, 
                `longitude` = :longitude, 
                `check_in` = :checkIn,
                `check_out` = :checkOut 
            WHERE `id_hotel` = :id";
    $query = $db->prepare($sql);

    $db->bindParam("nameHotel", $_POST['name']);
    $db->bindParam("address", $_POST['address']);
    $db->bindParam("districtId", $_POST['district_id']);
    $db->bindParam("cityId", $_POST['city_id']);
    $db->bindParam("price1Day", $_POST['price_1_day']);
    $db->bindParam("latitude", $_POST['latitude']);
    $db->bindParam("longitude", $_POST['longitude']);
    $db->bindParam("checkIn", $_POST['check_in']);
    $db->bindParam("checkOut", $_POST['check_out']);
    $db->bindParam("id", $_POST['id']);

    $query->execute();
    echo json_encode(array("row_change"=>$query->rowCount()));
    $query->closeCursor();
 ?>