<?php 
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_hotel = :id" : "" ;

    $query = $db->prepare("SELECT * FROM hotel ".$where." ORDER BY name_hotel");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    //$citys = $db->fetchAll();
    echo json_encode($query->fetchAll());
 ?>