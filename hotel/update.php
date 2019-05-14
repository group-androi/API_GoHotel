<?php 

    require("./../helper/checkToken.php");
    
if(!empty($_POST['name']) && 
    !empty($_POST['address']) && 
    !empty($_POST['district_id']) && 
    !empty($_POST['city_id']) && 
    !empty($_POST['id']))
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "UPDATE `hotel` 
            SET `name_hotel` = :name, 
                `address` = :address, 
                `district_id` = :districtId, 
                `city_id` = :cityId, 
                `price_room_per_day` = :price1Day, 
                `latitude` = :latitude, 
                `longitude` = :longitude 
            WHERE `id_hotel` = :id";
    $query = $db->prepare($sql);

    $db->bindParam("nameHotel", $_POST['name']);
    $db->bindParam("address", $_POST['address']);
    $db->bindParam("districtId", $_POST['district_id']);
    $db->bindParam("cityId", $_POST['city_id']);
    $db->bindParam("price1Day", (!empty($_POST['price_1_day'])) ? $_POST['price_1_day'] : 'null');
    $db->bindParam("latitude", (!empty($_POST['latitude'])) ? $_POST['latitude'] : 'null');
    $db->bindParam("longitude", (!empty($_POST['longitude'])) ? $_POST['longitude'] : 'null');
    $db->bindParam("id", $_POST['id']);

    $query->execute();
    echo json_encode(array("row_change"=>$query->rowCount()));
    $query->closeCursor();
 ?>