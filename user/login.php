<?php
if (!empty($_POST['phone']) && !empty($_POST['password'])) {

    require("./../database/connect_db.php");
    $Database = new Database();
    $db = $Database->connect();

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', gender, lat 'latitude', log 'longitude' FROM user WHERE MD5(phone) like MD5(:user) AND password like MD5(:passw) ORDER BY phone");
    
    $query->bindParam("user", $_POST['phone']);
    $query->bindParam("passw", $_POST['password']);
    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();
} else {
     # code...
}
 ?>