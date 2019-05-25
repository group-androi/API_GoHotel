<?php 

    require("./../helper/checkToken.php");
    
if ((isset($_GET['key_new']) || isset($_POST['key_new'])) && (isset($_GET['key_old']) || isset($_POST['key_old']))) {
	require("./../helper/connect_db.php");
	$db = (new myDatabase())->connect();
    $sql = "UPDATE `key_word` 
		    SET `key_word`= :keyNew WHERE 
		    `key_word`=:keyOld";
    $query = $db->prepare($sql);

    $wordkey_new= isset($_POST['key_new']) ? $_POST['key_new'] : isset($_GET['key_new']) ? $_GET['key_new'] : '';
    $wordkey_old= isset($_POST['key_old']) ? $_POST['key_old'] : isset($_GET['key_old']) ? $_GET['key_old'] : '';

    $query->bindParam("keyNew", $wordkey_new);
    $query->bindParam("keyOld", $wordkey_old);
    $query->execute();
    echo json_encode(array("rows_changed"=>$query->rowCount()));
    $query->closeCursor();
}
else{
 echo json_encode(array("rows_changed"=>-1));
       
}
 ?>
