<?php 

    require("./../helper/checkToken.php");
    
if(!empty($_POST["phone"])) {
    $result = 1;
    require("./../helper/connect_db.php");
    $db = (new Database())->connect();

    $changeParam = array();
    
    if (!empty($_POST["birthday"])) {
        array_push($changeParam, "dob = :birthd");
    }
    if (!empty($_POST['gender'])) {
        array_push($changeParam, "gender = :sexx");
    }

    $parameters = implode(", ", $changeParam);

	$sql = "UPDATE user SET ".$parameters." WHERE phone like :usern";

    $query = $db->prepare($sql);
    $query->bindParam("usern", $_POST['phone']);
    if (!empty($_POST["birthday"])) {
        $query->bindParam("birthd", $_POST['birthday']);
    }
    if (!empty($_POST['gender'])) {
        $query->bindParam("sexx", $_POST['gender']);
    }

    $query->execute();


    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
else {
    echo json_encode(array('rows_changed' => -1));
}
 ?>}
