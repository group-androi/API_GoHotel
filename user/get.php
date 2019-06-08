<?php 

    require_once("./../helper/checkToken.php");
    
	require_once("./../helper/connect_db.php");
	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_POST['phone'])) ? "WHERE phone = :id" : "" ;

    $query = $db->prepare("SELECT dob 'birthday', phone 'number_phone', gender, email,  token FROM user ".$where." ORDER BY phone");
    if (!empty($_POST["phone"])) {
    	$query->bindParam("id", $_POST['phone']);
    }
    $query->execute();
    
    echo json_encode($query->fetchAll());

    $query->closeCursor();

    http_response_code(200);
 ?>