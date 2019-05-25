<?php 

    //require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (isset($_GET['key']) || isset($_POST['key'])) ? "WHERE key_word = :key" : "" ;

    $query = $db->prepare("SELECT key_word 'key' FROM `key_word` ".$where." ORDER BY key_word");
    if (isset($_GET['key']) || isset($_POST['key'])) {

        $wordkey= isset($_POST['key']) ? $_POST['key'] : isset($_GET['key']) ? $_GET['key'] : '';

    	$query->bindParam("key", $wordkey);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>