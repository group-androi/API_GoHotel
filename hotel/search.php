<?php 
if (!empty($_GET['key'])) {
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

    $query = $db->prepare("SELECT * FROM hotel WHERE name_hotel = CONCAT('%',:keyword,'%')");
    $query->bindParam("keyword", $_GET['key']);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
} else {
    require("./get.php");
}
 ?>}
