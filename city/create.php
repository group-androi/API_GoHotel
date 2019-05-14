<?php 

    require("./../helper/checkToken.php");
if (empty($_POST['name'])) {
	echo json_encode(array("message"=>"Parameter null."));
	die();
}    
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "INSERT INTO `city`(`name_city`) VALUES (:cityName)";
    $query = $db->prepare($sql);
    $query->bindParam("cityName", $_POST['name']);
    $query->execute();
    
    echo json_encode(array("id_inserted"=>$db->lastInsertId()));
    
    $query->closeCursor();
    http_response_code(201);
 ?>