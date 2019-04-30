<?php 
if (!empty($_GET['city_id']) || 
	!empty($_POST['city_id'])) {
	
	require("./../database/connect_db.php");
	$Database = new Database();
	$db = $Database->connect();

    $sql = "SELECT id_district 'key', name_district 'name' FROM district WHERE city_id = :cityId ORDER BY name_district";
    $query = $this->db->prepare($sql);
    $query->bindParam("cityId", (empty($_POST['city_id'])) ? $_GET['city_id'] : $_POST['city_id']);
    $query->execute();
    echo json_encode($query->fetchAll());
    $query->closeCursor();
}
 ?>