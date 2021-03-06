<?php 

    //require_once("./../helper/checkToken.php");
    
if (isset($_GET['city_name']) || 
	isset($_POST['city_name'])) {
	
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $sql = "SELECT id_district 'key', name_district 'name' FROM district WHERE city_id IN (SELECT id_city FROM city WHERE name_city like :cityName) ORDER BY name_district";

    $query = $db->prepare($sql);
    $name=(empty($_POST['city_name'])) ? $_GET['city_name'] : $_POST['city_name'];
    $query->bindParam("cityName", $name);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
}
 ?>