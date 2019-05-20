<?php 
	require_once("./../helper/connect_db.php");
	
    require_once("./../helper/checkToken.php");
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
	else if (!empty($_POST['phone']) && 
			!empty($_POST['password'])) {

		$sql = "INSERT INTO `user`(`phone`, `password`) VALUES (:phone, MD5(:password))";
	    $query = $db->prepare($sql);
	    $query->bindParam("phone", $_POST['phone']);
	    $query->bindParam("password", $_POST['password']);
	    $query->execute();

	    $query->closeCursor();

	    if ($db == false) {
	    	echo json_encode(array('message' => 'Created failed!!!', 'result' => 1));
	    } else {
	    	if (!empty($_POST['birthday'])) {
	    		
		    	$sql="UPDATE user SET dob = :dayOfBirth WHERE phone like :username";
		    	$query = $db->prepare($sql);
		    	$query->bindParam("dayOfBirth", $_POST["birthday"]);
		    	$query->bindParam("username", $_POST['phone']);
		    	$query->execute();

		    	$query->closeCursor();	
		    }
		    if (!empty($_POST['gender'])) {
		    	$sql="UPDATE user SET gender = :sex WHERE phone like :username";
		    	$query = $db->prepare($sql);
		    	$query->bindParam("sex", $_POST["gender"]);
		    	$query->bindParam("username", $_POST['phone']);
		    	$query->execute();

		    	$query->closeCursor();
		    } 
	    	if (!empty($_POST['device_id'])) {
	    		
		    	$sql="UPDATE user SET device_id = :device_id WHERE phone like :username";
		    	$query = $db->prepare($sql);
		    	$query->bindParam("device_id", $_POST["device_id"]);
		    	$query->bindParam("username", $_POST['phone']);
		    	$query->execute();

		    	$query->closeCursor();	
		    }


			$token = SetToken($_POST['phone'],$_POST['password']);

		    echo json_encode(array('message' => 'Created successfully!!!', 'result' => 2, 'token' => $token));

		    http_response_code(200);
	    }
	} else {
		echo json_encode(array('message' => 'Registration information is not enough', 'result' => 3));

		http_response_code(400);
	}
}
else {	
	echo json_encode(array('message' => 'Registration information is not enough', 'result' => 3));
	http_response_code(400);
}
 ?>}
