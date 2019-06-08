<?php 
require_once("./../helper/checkToken.php");
if(!empty($_POST['password_new']) && !empty($_POST['password_old'])) {
	require_once("./../helper/connect_db.php");
}
 ?>
