<?php 
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_district = :id" : "" ;

    $query = $db->prepare("SELECT * FROM district ".$where." ORDER BY name_district");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    echo json_encode($query->fetchAll());
 ?>