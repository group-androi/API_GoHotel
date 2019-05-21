<?php 
	require_once("./../helper/connect_db.php");
	
    //require_once("./../helper/checkToken.php");
if (isset($_POST['phone'])) {
	$db = (new myDatabase())->connect();

	$sql = "SELECT * FROM user WHERE phone like :user";
	$query = $db->prepare($sql);
	$query->bindParam("user", $_POST["phone"]);
	$query->execute();

	$countAccountEquals = count($query->fetchAll());
	$query->closeCursor();

	if($countAccountEquals>0){
		echo json_encode(array('message' => 'Phone number already exists!', 'result' => 0));
		http_response_code(200);
	}
	else{
		echo json_encode(array('message' => 'Phone number does not exist yet!', 'result' => 1));
		http_response_code(200);	
	}
}

?>