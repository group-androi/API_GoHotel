<?php 
require_once("./../helper/checkToken.php");
if(isset($_POST['password_new']) && isset($_POST['password_old']) && isset($_POST['phone'])) {
	require_once("./../helper/connect_db.php");

	$Database = new myDatabase();
	$db = $Database->connect();

	$where = (!empty($_POST['phone'])) ? "WHERE phone = :id" : "" ;

    $query = $db->prepare("UPDATE user SET password = MD5(:passNew) WHERE phone = :id AND password = MD5(:passOld);");
    $query->bindParam("id", $_POST['phone']);
    $query->bindParam("passNew", $_POST['password_new'])
    $query->bindParam("passOld", $_POST['password_old'])
    $query->execute();
    
    $message = $query->rowCount() > 0 ? "Modified password." : "Password didn't modified.";

    echo json_encode(array("message"=>$message ,"result"=>$query->rowCount()));

    $query->closeCursor();

}
else{
	echo json_encode(array("message"=>"Lack of input value." ,"result"=>-1));
}
 ?>
