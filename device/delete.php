<?php 

    require_once("./../helper/checkToken.php");
    
    $where = (!empty($_GET["device_id"])) ? "WHERE id_device=:id" : "" ;

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM city ".$where);
    if (!empty($_GET["device_id"])) {
        $query->bindParam("id", $_GET['device_id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>