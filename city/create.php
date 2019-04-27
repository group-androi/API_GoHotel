<?php 
	require("./../database/connect_db.php");
	$db = (new Database())->connect();
    $sql = "INSERT INTO `city`(`name_city`) VALUES (:cityName)";
    $query = $db->prepare($sql);
    $query->bindParam("cityName", $_POST['name']);
    $query->execute();
    
    echo json_encode(array("id_inserted"=>$db->lastInsertId()));
    
    $query->closeCursor();
 ?>