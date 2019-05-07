<?php 

    require("./../helper/checkToken.php");
if (empty($_POST['name']) || $_FILES['image']) {
	echo json_encode(array("message"=>"Parameter null."));
	die();
}    
	require("./../helper/connect_db.php");
	$db = (new Database())->connect();
    $sql = "INSERT INTO `utility`(`name_utility`, `image`) VALUES (:name,:img)";
    $query = $db->prepare($sql);
    $query->bindParam("name", $_POST['name']);
    $query->bindParam("img", GetDirectoryCurrent().'files/'.$_FILES["image"]["name"]);
    $query->execute();
    
    echo json_encode(array("id_inserted"=>$db->lastInsertId()));
    
    $query->closeCursor();
    
    move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]));
        
    http_response_code(200);
 ?>