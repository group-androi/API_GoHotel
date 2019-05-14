<?php 

    require("./../helper/checkToken.php");
    
if (!empty($_POST["city_id"]) && !empty($_POST["name"])) {
	
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "INSERT INTO `district`(`name_district`, `city_id`) VALUES (:districtName,:cityId)";
    
    $query = $db->prepare($sql);
    $query->bindParam("districtName", $_POST['name']);
    $query->bindParam("cityId", $_POST['city_id']);
    $query->execute();

    echo json_encode(array("id_inserted"=>$db->lastInsertId()));
    
    $query->closeCursor();
}
 ?>