<?php 

    require("./../helper/checkToken.php");
    
    $where = (!empty($_GET["phone"])) ? "WHERE phone=:id" : "" ;

	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM user ".$where);
    if (!empty($_GET["user"])) {
        $query->bindParam("id", $_GET['phone']);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();

    http_response_code(200);
 ?>