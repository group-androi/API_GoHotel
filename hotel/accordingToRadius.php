<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

    $latitudeFrom = (!empty($_POST['latitude_from'])) ? "AND latitude >= :latitudeFrom " : "" ;
    $latitudeTo = (!empty($_POST['latitude_to'])) ? "AND latitude <= :latitudeTo " : "" ;

    $longitudeFrom = (!empty($_POST['longitude_from'])) ? "AND longitude >= :longitudeFrom " : "" ;
    $longitudeTo = (!empty($_POST['longitude_to'])) ? "AND longitude >= :latitudeTo " : "" ;

    $query = $db->prepare("SELECT * FROM `hotel` WHERE 1 ".$latitudeFrom.$latitudeTo.$longitudeFrom.$longitudeTo);
    
    if (!empty($_POST["latitude_from"])) {
    	$query->bindParam("latitudeFrom", $_POST['latitude_from']);
    }
    if (!empty($_POST["latitude_to"])) {
        $query->bindParam("latitudeFrom", $_POST['latitude_to']);
    }
    if (!empty($_POST["longitude_from"])) {
        $query->bindParam("longitudeFrom",$_POST['longitude_from']);
    }
    if (!empty($_POST["longitude_to"])) {
        $query->bindParam("longitudeTo",$_POST['longitude_to']);
    }

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->clodeCursor();
 ?>