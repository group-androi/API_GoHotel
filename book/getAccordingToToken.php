<?php 
    error_reporting(1); 
    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT *
                            FROM bookroom 
                            WHERE user_id = :user 
                            ORDER BY date_start");
    
    $token=GetIdUserFromToken();

    if ($token==null) {
        $token='*';
    }

    $query->bindParam("user", $token);
    
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>