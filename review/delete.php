<?php 

    require_once("./../helper/checkToken.php");


    $array_where = array('1');
    if (isset($_GET['hotel_id']) || isset($_POST['hotel_id'])) {
        array_push($array_where, 'hotel_id = :hotel');
    }
    if (isset($_GET['star']) || isset($_POST['star'])) {
        array_push($array_where, 'star = :star');
    }
    if (isset($_GET['comment']) || isset($_POST['comment'])) {
        array_push($array_where, 'comment = :comment');
    }

    $where = ' WHERE '.implode(' AND ', $array_where);

	require_once("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $query = $db->prepare("DELETE FROM hotel ".$where);

    if (isset($_GET['hotel_id']) || isset($_POST['hotel_id'])) {
        $hotel = isset($_GET['hotel_id']) ? $_GET['hotel_id'] : $_POST['hotel_id'];
        $query->bindParam("hotel", $hotel);
    }
    if (isset($_GET['star']) || isset($_POST['star'])) {
        $star = isset($_GET['star']) ? $_GET['star'] : $_POST['star'];
        $query->bindParam("star", $star);
    }
    if (isset($_GET['comment']) || isset($_POST['comment'])) {
        $comment = isset($_GET['comment']) ? $_GET['comment'] : $_POST['comment'];
        $query->bindParam("comment", $comment);
    }
    
    $query->execute();
    
    echo json_encode(array("rows_deleted"=>$query->rowCount()));
    
    $query->closeCursor();
 ?>