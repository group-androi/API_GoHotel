<?php 

    require("./../helper/checkToken.php");
    
    $where = (!empty($_GET["device_id"])) ? "WHERE id_device=:id" : "" ;

	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    $query = $db->prepare("DELETE FROM city ".$where);
    if (!empty($_GET["device_id"])) {
        $query->bindParam("id", $_GET['device_id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>