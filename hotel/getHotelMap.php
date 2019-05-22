<?php 

    //require("./../helper/checkToken.php");
    if(empty($_POST['latitude']) || empty($_POST['longitude']) || empty($_POST['radius']))
    {
        die();
        http_response_code(401);
    }

    require_once("./../helper/connect_db.php");
    $Database = new myDatabase();
    $db = $Database->connect();

    $query = $db->prepare("SELECT * FROM `hotel` WHERE SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) <= :radius ORDER BY SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) ");
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->bindParam("radius", $_POST['radius']);

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>         