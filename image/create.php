<?php

require("./../helper/checkToken.php");
$count_updated = 0;
if (empty($_POST['hotel']) || empty($_FILES['file'])) {
	http_response_code(400);
	die();
}
for ($i=0; $i < count($_FILES['file']['name']); $i++) { 
	try {
		require('./..helper/connect_db.php');
		$db=(new myDatabase())->connect();

		if (move_uploaded_file($_FILES["file"]["tmp_name"][i], "files/" . basename($_FILES["file"]["name"][i]))) {
		    $query="INSERT INTO `image`(`name_image`, `hotel_id`, `room_id`) VALUES (:file, :hotel, :room
		)";
			$query=$db->prepare($sql);
			$query->bindParam('file', GetDirectoryCurrent().'/files/'.$_FILES["file"]["name"][i]);
			$query->bindParam('hotel',$_POST['hotel']);
			$query->bindParam('room', empty($_POST['room']) ? '' : $_POST['room']);
			$query->execute();
			$query->closeCursor();
			$count_updated++;
		} else {
		}
	} catch (Exception $e) {
	}
}
	echo json_encode(array('file_uploaded'=>$count_updated));
	http_response_code(200);
?>