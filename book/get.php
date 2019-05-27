<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_book = :id" : "" ;

    $query = $db->prepare("SELECT *
                            FROM bookroom 
                            ".$where." 
                            ORDER BY date_start");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>