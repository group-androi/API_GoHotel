<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_utility = :id" : "" ;

    $query = $db->prepare("SELECT id_utility 'key', name_utility 'name', image 'link_image' FROM `utility` ".$where);
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();
 ?>