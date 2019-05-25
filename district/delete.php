<?php 

    require_once("./../helper/checkToken.php");
    
    $where = (!empty($_GET["id"])) ? "WHERE id_district=:id" : "" ;

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $query = $db->prepare("DELETE FROM district ".$where);
    if (!empty($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>