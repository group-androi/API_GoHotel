<?php 

    require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['id'])) ? "WHERE id_hotel = :id" : "" ;

    $query = $db->prepare("SELECT  id_hotel 'key', 
                                name_hotel 'name', 
                                address, 
                                (SELECT name_district FROM district WHERE district_id = id_district) 'district', 
                                (SELECT name_city FROM city WHERE city_id = id_city) 'city', 
                                price_room_per_day, 
                                latitude, 
                                longitude 
                            FROM hotel 
                            ".$where." 
                            ORDER BY name_hotel");
    if (!empty($_GET["id"])) {
    	$query->bindParam("id", $_GET['id']);
    }
    $query->execute();
    //$citys = $db->fetchAll();
    echo json_encode($query->fetchAll());
 ?>