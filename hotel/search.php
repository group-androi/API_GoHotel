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

    $limit="";

    $limitfrom=isset($_GET['limitfrom']) ? $_GET['limitfrom'] : isset($_POST['limitfrom']) ? $_POST['limitfrom'] : '';
    $limitcount=isset($_GET['limitcount']) ? $_GET['limitcount'] : isset($_POST['limitcount']) ? $_POST['limitcount'] : '';

    $checkNumberLimit = isset($limitfrom) && isset($limitcount) && is_numeric($limitfrom) && is_numeric($limitcount);

    if ($checkNumberLimit) {
        $limit=" LIMIT ".$limitfrom.", ".$limitcount;
    }

    /*echo $limit."<br/>";
    echo isset($_POST['limitfrom']).'<br/>';
    echo isset($_POST['limitcount']).'<br/>';
    echo $checkNumberLimit.'<br/>';
    echo is_numeric($_POST['limitfrom']).'<br/>';
    echo is_numeric($_POST['limitcount']).'<br/>';
    echo "SELECT * FROM `hotel`left join `image` on `image`.`hotel_id` = `hotel`.`id_hotel` WHERE name_hotel like \'".$key_search."\' ".$limit.'<br/>';
*/
    $query = $db->prepare("SELECT * FROM `hotel`left join `image` on `image`.`hotel_id` = `hotel`.`id_hotel` WHERE name_hotel like :keyword ".$limit);
    $query->bindParam("keyword", $key_search);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
} else {
    require("./get.php");
}


 ?>