<?php 

    require_once("./../helper/checkToken.php");
    
if (isset($_POST["city_id"]) && isset($_POST["name"])) {
	try {
        require_once("./../helper/connect_db.php");
        $db = (new myDatabase())->connect();
        
        $sql = "INSERT INTO `district`(`name_district`, `city_id`) VALUES (:districtName,:cityId)";
        
        $query = $db->prepare($sql);
        $query->bindParam("districtName", $_POST['name']);
        $query->bindParam("cityId", $_POST['city_id']);
        $query->execute();

        echo json_encode(array("message"=>"", "result"=>$db->lastInsertId()));
        
        $query->closeCursor();

        http_response_code(200);
    } catch (Exception $e) {
        
        echo json_encode(array("message"=>"", "result"=>0));
    }
    die();
}

        echo json_encode(array("message"=>"", "result"=>-1));
 ?>