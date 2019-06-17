<?php 
    //require_once("./../helper/checkToken.php");
    

try {
    if(isset($_POST["device_id"])){

    $changeParam = array();

    if (isset($_POST['latitude'])) {
        array_push($changeParam, "latitude = :lat");
    }

    if (isset($_POST['longitude'])) {
        array_push($changeParam, "longitude = :log")
    }

    $parameter = implode(", ", $changeParam);

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "UPDATE `device` 
            SET ".$parameter." WHERE 
            `device_id`=:id";
    $query = $db->prepare($sql);
    $query->bindParam("id", $_POST['device_id']);

    if (isset($_POST['latitude'])) {
        $query->bindParam("lat", $_POST['latitude']);
    }
    if (isset($_POST['longitude'])) {
        $query->bindParam("log",$_POST['longitude']);
    }
    $query->execute();
    echo json_encode(array("message"=>"" ,"result"=>1));  
    $query->closeCursor();
}
} catch (Exception $e) {
    
    echo json_encode(array("message"=>"" ,"result"=>0));  
}
 ?>