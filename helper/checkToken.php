<?php 
	$BooleanCheck=false;
	//echo json_encode(getallheaders());
	foreach (getallheaders() as $key => $value) {
		if ($key == "token") {
			require_once("helper.php");
			if (!CheckToken($value) && $value != "") {
				echo json_encode(array("message"=>"token invalid", "result"=>-2));
				http_response_code(401);
				die();
			}
			$BooleanCheck=true;
		}
	}

	if (!$BooleanCheck) {
		echo json_encode(array("message"=>"token not found", "result"=>-2));
		http_response_code(401);
		die();
	}
 ?>