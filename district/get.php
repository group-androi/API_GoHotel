<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_district = :id" : "" ;

    $query = $db->prepare("SELECT id_district 'key', name_district 'name', city_id 'city_key' FROM district ".$where." ORDER BY name_district");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    echo json_encode($query->fetchAll());
 ?>