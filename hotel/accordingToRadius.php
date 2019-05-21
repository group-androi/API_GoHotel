<?php 

    require("./../helper/checkToken.php");
    if(empty($_POST['latitude']) || empty($_POST['longitude']) || empty($_POST['radius']))
    {
        die();
        http_response_code(401);
    }

    require("./../helper/connect_db.php");
    $Database = new myDatabase();
    $db = $Database->connect();

    $limit="";

    if (isset($_POST['limitfrom']) && isset($_POST['limitfrom'])) {
        $limit=" LIMIT :limitFrom , :limitTo";
    }

    $query = $db->prepare("SELECT * FROM `hotel` WHERE SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) <= :radius ORDER BY SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) ".$limit);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->bindParam("radius", $_POST['radius']);

    if (isset($_POST['limitfrom']) && isset($_POST['limitfrom'])) {
        $query->bindParam("limitFrom", $_POST['limitfrom']);
        $query->bindParam("limitTo", $_POST['limitTo']);
    }

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->clodeCursor();

    http_response_code(200);
 ?>         