<?php 
try {
    require_once("./../helper/checkToken.php");
    
if(isset($_POST["city_name"]) && isset($_POST["id"])) {
    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "UPDATE `city` 
            SET `name_city`= :name WHERE 
            `id_city`=:id";
    $query = $db->prepare($sql);
    $query->bindParam("name", $_POST['city_name']);
    $query->bindParam("id", $_POST['id']);
    $query->execute();
    echo json_encode(array("message"=>"" ,"result"=>1));  
    $query->closeCursor();
}
} catch (Exception $e) {
    echo json_encode(array("message"=>"" ,"result"=>0));  
}
    
 ?>