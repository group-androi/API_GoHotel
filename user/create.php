<?php 
if ($_POST['phone']) {
	require("./../database/connect_db.php");
	$db = (new Database())->connect();

	$sql = "SELECT * FROM user WHERE phone like :user";
	$query = $db->prepare($sql);
	$query->bindParam("user", $_POST["phone"]);
	$query->execute();

	$countAccountEquals = count($query->fetchAll());
	$query->closeCursor();

	if($countAccountEquals>0){
		echo json_encode(array('message' => 'Username equal!', 'result' => 0));
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
		    if (!empty($_POST['latitude']) && !empty($_POST['longitude'])) {
		    	
		    	$sql="UPDATE user SET lat = :lati, log = :longi WHERE phone like :username";
		    	$query = $db->prepare($sql);
		    	$query->bindParam("lati", $_POST["latitude"]);
		    	$query->bindParam("longi", $_POST["longitude"]);
		    	$query->bindParam("username", $_POST['phone']);
		    	$query->execute();

		    	$query->closeCursor();
		    }

		    echo json_encode(array('message' => 'Created successfully!!!', 'result' => 2));
	    }
	} else {
		echo json_encode(array('message' => 'Registration information is not enough', 'result' => 3));
	}
}
else {	
	echo json_encode(array('message' => 'Registration information is not enough', 'result' => 3));
}
 ?>}
