<?php 

    //require_once("./../helper/checkToken.php");
    
if (!empty($_GET['city_id']) || 
	!empty($_POST['city_id'])) {
	
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $sql = "SELECT id_district 'key', name_district 'name' FROM district WHERE city_id = :cityId ORDER BY name_district";
    $query = $db->prepare($sql);
    $temp=(empty($_POST['city_id'])) ? $_GET['city_id'] : $_POST['city_id'];
    $query->bindParam("cityId", $temp);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
}
 ?>