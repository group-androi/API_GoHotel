<?php 

    require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (isset($_GET['device_id'])) ? "WHERE id_device = :id" : "" ;

    $query = $db->prepare("SELECT `id_device`, `latitude`, `longitude` FROM `device` ".$where." ORDER BY id_device");
    if (isset($_GET["device_id"])) {
    	$query->bindParam("id", $_GET['device_id']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>