<?php

    //require("./../helper/checkToken.php");
    
if (!empty($_POST['phone']) && !empty($_POST['password'])) {

    require("./../helper/connect_db.php");
    require("./../helper/helper.php");

    SetToken($_POST['phone'], $_POST['password']);

    $Database = new Database();
    $db = $Database->connect();

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', gender, token FROM user WHERE MD5(phone) like MD5(:user) AND password like MD5(:passw) ORDER BY phone");
    
    $query->bindParam("user", $_POST['phone']);
    $query->bindParam("passw", $_POST['password']);
    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
} else {
     http_response_code(400);
}
 ?>