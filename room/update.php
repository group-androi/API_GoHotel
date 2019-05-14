<?php 

    require("./../helper/checkToken.php");
    
    if (!empty($_POST['id']) && 
        !empty($_POST['hotel'])) {

        $array_parameter = array();
        if (isset($_POST['name'])) {
            array_push($array_parameter, "name_room = :name");
        }
        if (isset($_POST['price'])) {
            array_push($array_parameter, "price_per_day = :price");
        }
        if (isset($_POST['number_rooms'])) {
            array_push($array_parameter, "count = :number_rooms");
        }
        if (isset($_POST['status'])) {
            array_push($array_parameter, "status = :status")
        }
        if (isset($_FILES['image'])) {
            array_push($array_parameter, "image = :img");
        }
        $set = explode(", ", $array_parameter);
        
        require("./../helper/connect_db.php");
        $db = (new myDatabase())->connect();
        
        $sql = "UPDATE `room` SET ".$set." WHERE `id_room`=:id  
                    AND `hotel_id`= :hotel";
        
        $query = $db->prepare($sql);
        
        $db->bindParam("id", $_POST['name']);
        $db->bindParam("hotel", $_POST['hotel']);
        if (isset($_POST['name'])) {
            array_push($array_parameter, "name_room = :name");
        }
        if (isset($_POST['price'])) {
            $db->bindParam("price", $_POST['price_1_day']);
        }
        if (isset($_POST['number_rooms'])) {
            $db->bindParam("number_room", $_POST['number_rooms']);
        }
        if (isset($_FILES['image'])){
            $query->bindParam('img', GetDirectoryCurrent().'files/'.$_FILES["image"]["name"]);
        }
        if (isset($_POST['status'])) {
            $db->bindParam("status", $_POST['status']);
        }
        $query->execute();

        echo json_encode(array("id_inserted"=>$db->lastInsertId()));

        $query->closeCursor();
        if (isset($_FILES['image'])) {
            move_uploaded_file($_FILES["image"]["tmp_name"], "files/" . basename($_FILES["image"]["name"]));
        }
        http_response_code(201);
    } else {
        echo json_encode("error"=>"Data transmission is missing!!!"));

        return;
    }
 ?>