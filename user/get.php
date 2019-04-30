<?php 
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['phone'])) ? "WHERE phone = :id" : "" ;

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', gender, lat 'latitude', log 'longitude' FROM user ".$where." ORDER BY phone");
    if (!empty($_GET["phone"])) {
    	$query->bindParam("id", $_GET['phone']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>