<?php 

    require("./../helper/checkToken.php");
    
    $where = (!empty($_GET["id"])) ? "WHERE id_utility=:id" : "" ;

	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM utility ".$where);
    if (!empty($_GET["id"])) {
        $query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();

    http_response_code(200);
 ?>