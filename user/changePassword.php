<?php 
require("./../helper/checkToken.php");
if(!empty($_POST['password_new']) && !empty($_POST['password_old'])) {
	require("./../helper/connect_db.php");
}
 ?>
