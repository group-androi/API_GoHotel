<?php 
	$BooleanCheck=false;

	foreach (getallheaders() as $key => $value) {
		if ($key == "token") {
			require("helper.php");
			if (!CheckToken($value) && $value != "") {
				echo json_encode(array("message"=>"token invalid"));
				http_response_code(401);
				die();
			}
			$BooleanCheck=true;
		}
	}

	if (!$BooleanCheck) {
		http_response_code(401);
	}
 ?>