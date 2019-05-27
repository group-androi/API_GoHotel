<?php 

    require_once("./../helper/checkToken.php");
if (empty($_POST['name']) || empty($_FILES['image'])) {
	echo json_encode(array("result"=>-1));
    http_response_code(400);
	die();
}   
if (move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]))) {
	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "INSERT INTO `utility`(`name_utility`, `image`) VALUES (:name,:img)";
    $query = $db->prepare($sql);
    $query->bindParam("name", $_POST['name']);

    $tempStr='/utility/files/'.$_FILES["image"]["name"];
    $query->bindParam("img", $tempStr);
    $query->execute();
    
    echo json_encode(array("result"=>$db->lastInsertId()));
    
    $query->closeCursor();
        
    http_response_code(200);
    die();
}
    echo json_encode(array("result"=>0));

    http_response_code(400);
 ?>