<?php 

    //require("./../helper/checkToken.php");
$count_updated = 0;
if (empty($_POST['hotel']) || empty($_FILES['file'])) {
	//die();
}
try {
	for ($i=0; $i < count($_FILES['file']['name']); $i++) { 
		require('./..helper/connect_db.php');
		$db=(new Database())->connect();

		if (move_uploaded_file($_FILES["file"]["tmp_name"][i], "files/" . basename($_FILES["file"]["name"][i]))) {
		    $query="INSERT INTO `image`(`name_image`, `hotel_id`, `room_id`) VALUES (:file, :hotel, :room
		)";
			$query=$db->prepare($sql);
			$query->bindParam('file','/image/files/'.$_FILES["file"]["name"][i]);
			$query->bindParam('hotel',$_POST['hotel']);
			$query->bindParam('room', empty($_POST['room']) ? '' : $_POST['room']);
		} else {
		}

	}
} catch (Exception $e) {
	http_response_code(400)
}
/*
require("./../helper/connect_db.php");
$db = (new Database())->connect();
$sql = "INSERT INTO `city`(`name_city`) VALUES (:cityName)";
$query = $db->prepare($sql);
$query->bindParam("cityName", $_POST['name']);
$query->execute();

echo json_encode(array("id_inserted"=>$db->lastInsertId()));

$query->closeCursor();

 if (move_uploaded_file($_FILES["file"]["tmp_name"], "files/" . basename($_FILES["file"]["name"]))) {
    echo "The file ". basename( $_FILES["file"]["name"]). " has been uploaded.";
} else {
    echo "Sorry, there was an error uploading your file.";
}
*/
http_response_code(400);
 ?>