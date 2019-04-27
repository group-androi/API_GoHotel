<?php
if (!empty($_POST['username']) && !empty($_POST['password'])) {

    require("./../database/connect_db.php");
    $Database = new Database();
    $db = $Database->connect();

    $query = $db->prepare("SELECT id_user 'user', dob 'birthday', phone 'number_phone', gender, lat 'latitude', log 'longitude' FROM user WHERE MD5(id_user) like MD5(:user) AND password like MD5(:passw) ORDER BY id_user");
    
    $query->bindParam("user", $_POST['username']);
    $query->bindParam("passw", $_POST['password']);
    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();
} else {
     # code...
}
 ?>