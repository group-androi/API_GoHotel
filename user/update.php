<?php 

    require("./../helper/checkToken.php");
    
if(!empty($_POST["phone"])) {
    $result = 1;
    require("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();

    $changeParam = array();
    
    if (!empty($_POST["birthday"])) {
        array_push($changeParam, "dob = :birthd");
    }
    if (!empty($_POST['gender'])) {
        array_push($changeParam, "gender = :sexx");
    }
    if (isset($_POST['device_id'])) {
        array_push($changeParam, "device_id = :device");
    }
    if (isset($_POST['mail'])) {
        array_push($changeParam, "email = :em");
    }
    if (isset($_POST['pass'])) {
        array_push($changeParam, "password = :pw");
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
    if (isset($_POST['device_id'])) {
        $query->bindParam("device", $_POST['device_id']);
    }
    if (isset($_POST['mail'])) {
        $query->bindParam("em", $_POST['mail']);
    }
    if (isset($_POST['pass'])) {
        $query->bindParam("pw", $_POST['pass']);
    }

    $query->execute();


    
    echo json_encode(array("message"=>"" ,"result"=>$query->rowCount()));
    $query->closeCursor();

    http_response_code(200);
}
else {
    echo json_encode(array("message"=>"" ,"result"=>-1));
    http_response_code(400);
}
 ?>}
