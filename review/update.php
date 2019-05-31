<?php 

    require_once("./../helper/checkToken.php");
    
if (((isset($_GET['hotel_id']) && isset($_GET['user']) && isset($_GET['room_id'])) 
    || (isset($_POST['hotel_id']) && isset($_POST['user']) && isset($_POST['room_id'])))) {
    $array_where = array("1");

    if (isset($_GET['hotel_id']) || isset($_POST['hotel_id'])) {
        array_push($array_where, 'hotel_id = :hotel');
    }
    if (isset($_GET['user']) || isset($_POST['user'])) {
        array_push($array_where, 'user_id = :user');
    }
    if (isset($_GET['room_id']) || isset($_POST['room_id'])) {
        array_push($array_where, 'room_id = :room');
    }

    $where = ' WHERE '.implode(' AND ', $array_where);

    require_once("./../helper/connect_db.php");
    $db = (new myDatabase())->connect();
    $sql = "UPDATE `review` 
            SET `star`= :star, comment = :comment WHERE ".$where;
    $query = $db->prepare($sql);

    if (isset($_GET['hotel_id']) || isset($_POST['hotel_id'])) {
        $hotel = isset($_GET['hotel_id']) ? $_GET['hotel_id'] : $_POST['hotel_id'];
        $query->bindParam("hotel", $hotel);
    }
    if (isset($_GET['user']) || isset($_POST['user'])) {
        $user = isset($_GET['user']) ? $_GET['user'] : $_POST['user'];
        $query->bindParam("user", $user);
    }
    if (isset($_GET['room_id']) || isset($_POST['room_id'])) {
        $room = isset($_GET['room_id']) ? $_GET['room_id'] : $_POST['room_id'];
        $query->bindParam("room", $room);
    }
    
    $star = isset($_GET['star_new']) ? $_GET['star_new'] : $_POST['star_new'];
    $query->bindParam("star", $star);
    
    $comment = isset($_GET['comment_new']) ? $_GET['comment_new'] : $_POST['comment_new'];
    $query->bindParam("comment", $comment);
    

    $query->execute();
    echo json_encode(array("message"=>"" ,"result"=>$query->rowCount()));
    $query->closeCursor();
}
else{
    echo json_encode(array("message"=>"" ,"result"=>0));
       
}
 ?>
