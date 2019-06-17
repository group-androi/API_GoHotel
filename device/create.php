<?php 

if (!isset($_POST['device_id'])||!isset($_POST['latitude']) || !isset($_POST['longitude'])) {
    echo json_encode(array("message"=>"Has parameter null.", "result"=>-1));
    die();
}
    
try {
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "INSERT INTO `device`(`id_device`, `latitude`, `longitude`) VALUES (:device, :latitude, :longitude)";
    $query = $db->prepare($sql);
    $query->bindParam("device", $_POST['device_id']);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->execute();
    echo json_encode(array("message"=>"Added success.", "result"=>1));
    $query->closeCursor();
} catch (Exception $e) {
    echo json_encode(array("message"=>"Added failure.", "result"=>0));	
}?>