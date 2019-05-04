<?php 

    require("./../helper/checkToken.php");
    
    $where = (!empty($_GET["id"])) ? "WHERE id_city=:id" : "" ;

	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    $query = $db->prepare("DELETE FROM city ".$where);
    if (!empty($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>