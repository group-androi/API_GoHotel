<?php 

    //require("./../helper/checkToken.php");
    
if (isset($_GET['key']) || isset($_POST['key'])) {
    require_once("./../helper/connect_db.php");
    require_once("./../helper/helper.php");
	$Database = new myDatabase();
	$db = $Database->connect();

    $key_search=isset($_POST['key']) ? $_POST['key'] : $_GET['key'];

    saveKeyword($key_search);

    $key_search='%'.$key_search.'%';

    $query = $db->prepare("SELECT id_hotel 'key', 
    							name_hotel 'name', 
    							address, 
    							(SELECT name_district FROM district WHERE district_id = id_district) 'district', 
    							(SELECT name_city FROM city WHERE city_id = id_city) 'city', 
    							price_room_per_day, 
    							latitude, 
    							longitude 
    						FROM hotel 
    						WHERE name_hotel like :keyword");
    $query->bindParam("keyword", $key_search);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
} else {
    require("./get.php");
}


 ?>