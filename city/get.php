<?php 
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_city = :id" : "" ;

    $query = $db->prepare("SELECT id_city 'key', name_city 'name' FROM `city` ".$where." ORDER BY name_city");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>