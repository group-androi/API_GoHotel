<?php 

    require_once("./../helper/checkToken.php");
    
if(!empty($_POST["name"]) && 
    !empty($_POST["id"]) && 
    !empty($_POST['city_id']))
	
    require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $sql = "UPDATE `district` SET `name_district`=:name,`city_id`=:cityId WHERE `id_district`=:id";
    
    $query = $db->prepare($sql);
    $query->bindParam("name", $input['name']);
    $query->bindParam("cityId", $input['city_id']);
    $query->bindParam("id", $args['id']);
    $query->execute();
    
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
 ?>