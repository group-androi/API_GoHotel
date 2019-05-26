<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_hotel = :id" : "" ;

    $query = $db->prepare("SELECT *
                            FROM hotel 
                            ".$where." 
                            ORDER BY name_hotel");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    //$citys = $db->fetchAll();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>