<?php 

    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $query = $db->prepare("SELECT *
                            FROM bookroom 
                            WHERE user_id = :user 
                            ORDER BY date_start");
    
    $query->bindParam("user", GetIdUserFromToken());
    
    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>