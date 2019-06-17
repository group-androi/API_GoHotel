<?php 

    require_once("./../helper/checkToken.php");
    
    $where = (isset($_GET["id"])) ? "WHERE id_district=:id" : "" ;

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $query = $db->prepare("DELETE FROM district ".$where);
    if (isset($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>