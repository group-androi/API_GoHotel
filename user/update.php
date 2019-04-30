<?php 
if(!empty($_POST["phone"])) {
    $result = 1;
    require("./../database/connect_db.php");
    $db = (new Database())->connect();

    $changeParam = array();
    
    if (!empty($_POST["birthday"])) {
        array_push($changeParam, "dob = :birthd");
    }
    if (!empty($_POST['gender'])) {
        array_push($changeParam, "gender = :sexx");
    }
    if (!empty($_POST['latitude'])) {
        array_push($changeParam, "lat = :lati");
    }
    if (!empty($_POST['longitude'])) {
        array_push($changeParam, "log = :longi");
    }
    if (!empty($_POST['tokenn'])) {
        array_push($changeParam, "token = :tok");
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
    if (!empty($_POST['latitude'])) {
        $query->bindParam("lati", $_POST['latitude']);
    }
    if (!empty($_POST['longitude'])) {
        $query->bindParam("longi", $_POST['longitude']);
    }
    if (!empty($_POST['tokenn'])) {
        $query->bindParam("tok", $_POST['tokenn']);
    }

    $query->execute();


    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
else {
    echo json_encode(array('rows_changed' => -1));
}
 ?>}
