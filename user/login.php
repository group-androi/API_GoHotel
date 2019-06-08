<?php

    //require("./../helper/checkToken.php");
    
if (!empty($_POST['phone']) && !empty($_POST['password'])) {

    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");

    SetToken($_POST['phone'], $_POST['password']);

    $Database = new myDatabase();
    $db = $Database->connect();

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', email, gender, token FROM user WHERE MD5(phone) like MD5(:user) AND password like MD5(:passw) ORDER BY phone");
    
    $query->bindParam("user", $_POST['phone']);
    $query->bindParam("passw", $_POST['password']);
    $query->execute();

    $result = $query->fetchAll(PDO::FETCH_ASSOC);

    if (count($result)>0) {
        $result[0] += ['result' => 1] + ['message' => ""];
        echo json_encode($result[0]);
    }
    else{
        echo json_encode(array('message' => "Login failed", "result"=>0));
    }
    $query->closeCursor();

    http_response_code(200);
} else {
    echo json_encode(array('message' => "Error other", "result"=>0));
    http_response_code(400);
}
 ?>