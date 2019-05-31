<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['id']) || !empty($_POST['id'])) ? "WHERE id_book = :id" : "" ;

    $query = $db->prepare("SELECT *
                            FROM bookroom 
                            ".$where." 
                            ORDER BY date_start");
    if (!empty($_GET["id"]) || !empty($_POST['id'])) {
    	$key = isset($_GET['id']) ? $_GET['id'] : $_POST['id'];
    	$query->bindParam("id", $key);
    }
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>