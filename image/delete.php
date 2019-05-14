<?php 

    require("./../helper/checkToken.php");

    require("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();

    $array_parameter=array();
    if (!empty($_POST["hotel"])) {
        array_push($array_parameter, 'hotel_id = :hotel');
    }
    if (!empty($_POST['room'])) {
        array_push($array_parameter, 'room_id = :room');
    }
    if (!empty($_POST['address_image'])) {
        array_push($array_parameter, 'name_image = :image');
    }
    $where= " WHERE ".explode(" AND ", $array_parameter);

    $query = $db->prepare("SELECT name_image FROM image ".$where);
    if (!empty($_POST["hotel"])) {
        $query->bindParam("hotel", $_POST['hotel']);
    }
    if (!empty($_POST["room"])) {
        $query->bindParam("room", $_POST['room']);
    }
    if (!empty($_POST["image"])) {
        $query->bindParam("image", $_POST['address_image']);
    }
    $query->execute();

    foreach ($query->fetchAll(PDO::FETCH_ASSOC) as $key) {
        if (file_exists($key['name_image'])) {
            unlink($key['name_image']);
        }
    }    

    $query = $db->prepare("DELETE FROM image ".$where);
    if (!empty($_POST["hotel"])) {
        $query->bindParam("hotel", $_POST['hotel']);
    }
    if (!empty($_POST["room"])) {
        $query->bindParam("room", $_POST['room']);
    }
    if (!empty($_POST["image"])) {
        $query->bindParam("image", $_POST['address_image']);
    }
    $query->execute();

    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();

    http_response_code(200);
 ?>