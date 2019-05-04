<?php 
	require("helper.php");
	if (!CheckToken(!empty($_POST['token']) ? 
		$_POST['token'] : !empty($_GET['token']) ? 
							$_GET['token'] : '')) {
		echo json_encode(array("message"=>"token invalid"));
		die();
	}
 ?>