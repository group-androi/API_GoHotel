<?php

require_once("./../helper/checkToken.php");
$count_updated = 0;
if (empty($_POST['hotel_id']) || empty($_FILES['file_id'])) {
	echo json_encode(array("message"=>"", 'result'=>-1));
	http_response_code(400);
	die();
}
try {
	
} catch (Exception $e) {

for ($i=0; $i < count($_FILES['file']['name']); $i++) { 
	try {
		require_once('../helper/connect_db.php');
		$db=(new myDatabase())->connect();

		if (move_uploaded_file($_FILES["file"]["tmp_name"][$i], "files/" . basename($_FILES["file"]["name"][$i]))) {
		    $sql="INSERT INTO `image`(`name_image`, `hotel_id`, `room_id`) VALUES (:file, :hotel, :room
		)";
			$query=$db->prepare($sql);
			$fileStr = GetDirectoryCurrent().'/files/'.$_FILES["file"]["name"][$i];
			$query->bindParam('file', $fileStr);
			$query->bindParam('hotel',$_POST['hotel_id']);
			$query->bindParam('room', $_POST['room_id']);
			$query->execute();
			$query->closeCursor();
			$count_updated++;
		} else {
		}

		echo json_encode(array("message"=>"", 'result'=>$count_updated));
		http_response_code(200);
	} catch (Exception $e) {
		echo json_encode(array("message"=>"", 'result'=>$count_updated));
		http_response_code(200);

	}
}	
}
?>