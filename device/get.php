<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['device_id'])) ? "WHERE id_device = :id" : "" ;

    $query = $db->prepare("SELECT `id_device`, `latitude`, `longitude` FROM `device` ".$where." ORDER BY id_device");
    if (!empty($_GET["device_id"])) {
    	$query->bindParam("id", $_GET['device_id']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>