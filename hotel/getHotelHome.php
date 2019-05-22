<?php 

//    require("./../helper/checkToken.php");
    if(empty($_POST['latitude']) || empty($_POST['longitude']))
    {
        http_response_code(401);
        die();
    }

    require_once("./../helper/connect_db.php");
    $Database = new myDatabase();
    $db = $Database->connect();

    $limit="";

    $checkNumberLimit = isset($_POST['limitfrom']) && isset($_POST['limitcount']) && filter_var($_POST['limitfrom'], FILTER_VALIDATE_INT) && filter_var($_POST['limitcount'], FILTER_VALIDATE_INT);

    if ($checkNumberLimit) {
        $limit=" LIMIT :limitFrom , :limitTo";
    }

    $query = $db->prepare("SELECT *,((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) 'distance' FROM `hotel` ORDER BY ((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) ".$limit);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);

    if ($checkNumberLimit) {
        $query->bindParam("limitFrom", $_POST['limitfrom']);
        $query->bindParam("limitTo", $_POST['limitcount']);
    }

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>         