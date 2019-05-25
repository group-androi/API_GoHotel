<?php 

    //require("./../helper/checkToken.php");
if (empty($_POST['key']) && empty($_GET['key'])) {
	echo json_encode(array("message"=>"Parameter null.","result"=>-1));
	die();
}    

try {

    $key_work = isset($_GET['key']) ? $_GET['key'] : $_POST['key'];

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "INSERT INTO `key_work`(`key_work`) VALUES (:key)";
    $query = $db->prepare($sql);

    $query->bindParam("key", $key_work);
    $query->execute();
    
    echo json_encode(array("result"=>1));
    
    $query->closeCursor();
    http_response_code(201);
 
} catch (Exception $e) {
    echo json_encode(array("result"=>0);
}
	?>