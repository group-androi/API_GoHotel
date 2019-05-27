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


    // gioi han
    $limit="";
    $checkNumberLimit = isset($_POST['limit_from']) && isset($_POST['limit_count']) && is_numeric($_POST['limit_from']) && is_numeric($_POST['limit_count']);

    if ($checkNumberLimit) {
        $limit=" LIMIT ".$_POST['limit_from'].", ".$_POST['limit_count'].' ';
    }

    // sap xep
    $sort='';
    $array_sort= array();
    if (isset($_POST['sort_price']) || isset($_POST['sort_star']) || isset($_POST['sort_distance'])) {
        if (isset($_POST['sort_price']) && ($_POST['sort_price'] == 'DESC' || $_POST['sort_price'] == 'ASC')) {
            array_push($array_sort, 'price_room_per_day '.$_POST['sort_price']);
        }
        if (isset($_POST['sort_distance']) && ($_POST['sort_distance'] == 'DESC' || $_POST['sort_distance'] == 'ASC')) {
            array_push($array_sort, '((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) '.$_POST['sort_distance']);
        }
        if (isset($_POST['sort_star']) && ($_POST['sort_star'] == 'DESC' || $_POST['sort_star'] == 'ASC')) {
            array_push($array_sort, 'COUNT(`review`.`star`) '.$_POST['sort_star']);
        }

        if (count($array_sort)>0) {
            $sort=' ORDER BY '.implode(', ', $array_sort).' ';
        }
    }

    // dieu kiem
    $where="";
    $array_where = array();
    if (isset($_POST['city_id']) || isset($_POST['district_id']) || isset($_POST['price_start']) || isset($_POST['price_end'])) {
        if (isset($_POST['city_id']) && is_numeric($_POST['city_id'])) {
            array_push($array_where, 'city_id = :city');
        }
        if (isset($_POST['district_id']) && is_numeric($_POST['district_id'])) {
            array_push($array_where, 'district_id = :district');
        }
        if (isset($_POST['price_start']) && is_numeric($_POST['price_start'])) {
            array_push($array_where, 'CAST(price_room_per_day AS UNSIGNED) >= CAST(:pricestart AS UNSIGNED)');
        }
        if (isset($_POST['price_end']) && is_numeric($_POST['price_end'])) {
            array_push($array_where, 'CAST(price_room_per_day AS UNSIGNED) <= CAST(:priceend AS UNSIGNED)');
        }

        if (count($array_where)>0) {
            $where ='where '.implode(" AND ", $array_where).' ';
        }
    }

    $sql="SELECT `hotel`.*, `image`.`name_image` 'link_image' , `image`.`room_id`, SQRT((latitude - :latitude)*(latitude - :latitude)+(longitude - :longitude)*(longitude - :longitude)) 'distance' , COUNT(`review`.`star`) 'count_star'
        FROM `hotel` LEFT JOIN `image` ON `image`.`hotel_id` = `hotel`.`id_hotel` 
        LEFT JOIN `review` ON `review`.`hotel_id` = `hotel`.`id_hotel`
        ".$where.' GROUP BY `hotel`.`id_hotel` '.$sort.$limit;
        //echo $sql;

    $query = $db->prepare($sql);
    $query->bindParam("latitude", $_POST['latitude']);
    $query->bindParam("longitude", $_POST['longitude']);

    if (isset($_POST['city_id']) && is_numeric($_POST['city_id'])) {
        $query->bindParam('city', $_POST['city_id']);
    }
    if (isset($_POST['district_id']) && is_numeric($_POST['district_id'])) {
        $query->bindParam('district', $_POST['district_id']);
    }
    if (isset($_POST['price_start']) && is_numeric($_POST['price_start'])) {
        $query->bindParam('pricestart', $_POST['price_start']);
    }
    if (isset($_POST['price_end']) && is_numeric($_POST['price_end'])) {
        $query->bindParam('priceend', $_POST['price_end']);
    }

    $query->execute();
    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>         