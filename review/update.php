<?php 

    require_once("./../helper/checkToken.php");
    
if ((isset($_GET['user_id']) || isset($_POST['user_id'])) && (isset($_GET['hotel_id']) || isset($_POST['hotel_id']))) {
    $array_where = array("1");

    if (isset($_GET['hotel_id']) || isset($_POST['hotel_id'])) {
        array_push($array_where, 'hotel_id = :hotel');
    }
    if (isset($_GET['user_id']) || isset($_POST['user_id'])) {
        array_push($array_where, 'user_id = :user');
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
    
    $star = isset($_GET['star_new']) ? $_GET['star_new'] : $_POST['star_new'];
    $query->bindParam("star", $star);
    
    $comment = isset($_GET['comment_new']) ? $_GET['comment_new'] : $_POST['comment_new'];
    $query->bindParam("comment", $comment);
    
    if (isset($_GET['user_id']) || isset($_POST['user_id'])) {
        $user = isset($_GET['user_id']) ? $_GET['user_id'] : $_POST['user_id'];
        $query->bindParam("user", $user);
    }
    $query->execute();
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
else{
 echo json_encode(array("rows_changed"=>-1));
       
}
 ?>
