<?php 
try {
    
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
    
    echo json_encode(array("message"=>"" ,"result"=>1));  
    $query->closeCursor();
} catch (Exception $e) {
    
    echo json_encode(array("message"=>"" ,"result"=>0));  
}
 ?>