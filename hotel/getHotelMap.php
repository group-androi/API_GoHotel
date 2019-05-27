<?php 

    //require("./../helper/checkToken.php");
    if(empty($_POST['latitude']) || empty($_POST['longitude']) || empty($_POST['radius']))
    {
        die();
        http_response_code(401);
    }

    // dieu kiem
    $where=' WHERE SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) <= :radius ';
    $array_where = array();
    if (isset($_POST['city_id']) || isset($_POST['district_id'])) {
        if (isset($_POST['city_id']) && is_numeric($_POST['city_id'])) {
            array_push($array_where, 'city_id = :city');
        }
        if (isset($_POST['district_id']) && is_numeric($_POST['district_id'])) {
            array_push($array_where, 'district_id = :district');
        }
        if (count($array_where)>0) {
            $where =$where.' AND '.implode(" AND ", $array_where).' ';
        }
    }

    require_once("./../helper/connect_db.php");
    $Database = new myDatabase();
    $db = $Database->connect();

    $query = $db->prepare("SELECT `hotel`.*, `image`.`name_image` 'link_image' , `image`.`room_id` FROM `hotel` LEFT JOIN `image` ON `image`.`hotel_id` = `hotel`.`id_hotel` ".$where." ORDER BY SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) ");
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);
    $query->bindParam("radius", $_POST['radius']);

    if (isset($_POST['city_id']) && is_numeric($_POST['city_id'])) {
        $query->bindParam('city', $_POST['city_id']);
    }
    if (isset($_POST['district_id']) && is_numeric($_POST['district_id'])) {
        $query->bindParam('district', $_POST['district_id']);
    }

    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>         