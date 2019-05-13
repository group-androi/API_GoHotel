<?php 

function CheckToken($token = "")
{
	require("./../helper/connect_db.php");
	$db = (new Database())->connect();

    $sql = "SELECT * FROM user WHERE token like :token";
    $query = $db->prepare($sql);
    $query->bindParam("token", $token);
    $query->execute();

    $result = count($query->fetchAll()) == 1;
    $query->closeCursor();
    return $result;
}

function SetToken($phone='',$pw='')
{
    $token=bin2hex(openssl_random_pseudo_bytes(32));

    require("./../helper/connect_db.php");
    $Database = new Database();
    $db = $Database->connect();

    $query = $db->prepare("UPDATE user SET token = :token WHERE MD5(phone) like MD5(:user) AND password like MD5(:passw) ORDER BY phone");
    $query->bindParam("token", $token);
    $query->bindParam("user", $phone);
    $query->bindParam("passw", $pw);
    $query->execute();

    echo json_encode($query->fetchAll());

    $query->closeCursor();

    return $token;
}

function GetDirectoryCurrent()
{
    return str_replace(basename($_SERVER['SCRIPT_FILENAME']), "", $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
}
 ?>