<?php 

    require_once("./../helper/checkToken.php");
if (empty($_POST['name'])) {
	echo json_encode(array("message"=>"Parameter null.","result"=>-1));
	die();
}    

try {
    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "INSERT INTO `city`(`name_city`) VALUES (:cityName)";
    $query = $db->prepare($sql);
    $query->bindParam("cityName", $_POST['name']);
    $query->execute();
    
    echo json_encode(array("result"=>$db->lastInsertId()));
    
    $query->closeCursor();
    http_response_code(201);
 
} catch (Exception $e) {
    echo json_encode(array("result"=>0);
}
	?>