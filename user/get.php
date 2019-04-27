<?php 
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['user'])) ? "WHERE id_user = :id" : "" ;

    $query = $db->prepare("SELECT id_user 'user', dob 'birthday', phone 'number_phone', gender, lat 'latitude', log 'longitude' FROM user ".$where." ORDER BY id_user");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['user']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>