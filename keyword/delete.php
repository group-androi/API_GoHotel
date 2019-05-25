<?php 

    require_once("./../helper/checkToken.php");
    
    $where = (isset($_GET['key']) || isset($_POST['key'])) ? "WHERE key_word = :key" : "" ;

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM key_word ".$where);
    if (isset($_GET['key']) || isset($_POST['key'])) {
        $wordkey= isset($_POST['key']) ? $_POST['key'] : isset($_GET['key']) ? $_GET['key'] : '';
        $query->bindParam("key", $wordkey);
    }
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>