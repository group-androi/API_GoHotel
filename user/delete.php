<?php 
    $where = (!empty($_GET["user"])) ? "WHERE id_user=:id" : "" ;

	require("./../database/connect_db.php");
	$db = (new Database())->connect();
    $query = $db->prepare("DELETE FROM user ".$where);
    if (!empty($_GET["user"])) {
        $query->bindParam("id", $_GET['user']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>