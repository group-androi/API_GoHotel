<?php 
    //require("./../helper/checkToken.php");
    
if(!empty($_POST["device_id"])){

    $changeParam = array();

    if (!empty($_POST['latitude'])) {
        array_push($changeParam, "latitude = :lat");
    }

    if (!empty($_POST['longitude'])) {
        array_push($changeParam, "longitude = :log")
    }

    $parameter = implode(", ", $changeParam);

	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "UPDATE `device` 
		    SET ".$parameter." WHERE 
		    `device_id`=:id";
    $query = $db->prepare($sql);
    $query->bindParam("id", $_POST['device_id']);

    if (!empty($_POST['latitude'])) {
        $query->bindParam("lat", $_POST['latitude']);
    }
    if (!empty($_POST['longitude'])) {
        $query->bindParam("log",$_POST['longitude']);
    }
    $query->execute();
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
 ?>