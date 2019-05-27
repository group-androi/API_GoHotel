<?php 

    require("./../helper/checkToken.php");
    
if(!empty($_POST["id"])){
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    
    $array_parameter = array();
    if (isset($_POST['name'])) {
        array_push($array_parameter, "name_utility = :name");
    }
    if (isset($_FILES['image'])) {
        array_push($array_parameter, "image = :img")
    }
    $set=implode(",", $array_parameter);

    $sql = "UPDATE `utility` SET ".$set." WHERE `id_utility`=:id";
    $query = $db->prepare($sql);
    if (isset($_POST['name'])) {
        $query->bindParam("name", $_POST['name']);
    }
    if (isset($_FILES['image'])) {
        $soimage='/utility/files/'.$_FILES["image"]["name"];
        $query->bindParam("img", $soimage);
    }
    $query->bindParam("id", $_POST['id']);
    $query->execute();
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();

    move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]));
    
    http_response_code(200);
}
 ?>