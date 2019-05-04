<?php 

    
try {
	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    $sql = "INSERT INTO `device`(`id_device`, `latitude`, `longitude`) VALUES (:device, :latitude, :longitude)";
    $query = $db->prepare($sql);
    $query->bindParam("device", $_POST['device_id']);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->execute();
    echo json_encode(array("id_inserted"=>true));	
    $query->closeCursor();
} catch (Exception $e) {
    echo json_encode(array("id_inserted"=>false));	
}?>