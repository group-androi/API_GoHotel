<?php 

    require_once("./../helper/checkToken.php");
    
if(!empty($_POST["city_name"]) && !empty($_POST["id"])) {
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "UPDATE `city` 
		    SET `name_city`= :name WHERE 
		    `id_city`=:id";
    $query = $db->prepare($sql);
    $query->bindParam("name", $_POST['city_name']);
    $query->bindParam("id", $_POST['id']);
    $query->execute();
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
 ?>