<?php 

    require("./../helper/checkToken.php");
    
	require("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_GET['phone'])) ? "WHERE phone = :id" : "" ;

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', gender, token FROM user ".$where." ORDER BY phone");
    if (!empty($_GET["phone"])) {
    	$query->bindParam("id", $_GET['phone']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>