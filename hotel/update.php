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

    $query->bindParam("nameHotel", $_POST['name']);
    $query->bindParam("address", $_POST['address']);
    $query->bindParam("districtId", $_POST['district_id']);
    $query->bindParam("cityId", $_POST['city_id']);
    $query->bindParam("price1Day", $_POST['price_1_day']);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->bindParam("checkIn", $_POST['check_in']);
    $query->bindParam("checkOut", $_POST['check_out']);
    $query->bindParam("id", $_POST['id']);
    
    $query->execute();
    echo json_encode(array("row_change"=>$query->rowCount()));
    $query->closeCursor();
 ?>