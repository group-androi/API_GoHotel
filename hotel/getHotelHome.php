<?php 

    require("./../helper/checkToken.php");
    if(empty($_POST['latitude']) || empty($_POST['longitude']))
    {
        die();
        http_response_code(401);
    }

    require("./../helper/connect_db.php");
    $Database = new myDatabase();
    $db = $Database->connect();

    
    $query = $db->prepare("SELECT * FROM `hotel` ORDER BY SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude))");
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->clodeCursor();

    http_response_code(200);

 ?>         