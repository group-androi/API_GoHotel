<?php 
require_once("connect_db.php");
function CheckToken($token = "")
{
	$db = (new myDatabase())->connect();

    $sql = "SELECT * FROM user WHERE token like :token";
    $query = $db->prepare($sql);
    $query->bindParam("token", $token);
    $query->execute();

    $result = count($query->fetchAll()) == 1 || $token = '';
    $query->closeCursor();
    return $result;
}

function GetIdUserFromToken()
{
    $result = array();
    foreach (getallheaders() as $key => $value) {
        if ($key == "token") {
            $db = (new myDatabase())->connect();

            $sql = "SELECT phone FROM user WHERE token like :token";
            $query = $db->prepare($sql);
            $query->bindParam("token", $value);
            $query->execute();

            $result=$query->fetchAll();

            $query->closeCursor();
        }
    }
    if (count($result)==0) {
        return null;
    }else{
        return $result[0]['phone'];
    }
}

function SetToken($phone='',$pw='')
{
    $token=bin2hex(openssl_random_pseudo_bytes(32));

    $Database = new myDatabase();
    $db = $Database->connect();

    $query = $db->prepare("UPDATE user SET token = :token WHERE MD5(phone) like MD5(:user) AND password like MD5(:passw) ORDER BY phone");
    $query->bindParam("token", $token);
    $query->bindParam("user", $phone);
    $query->bindParam("passw", $pw);
    $query->execute();

    $query->closeCursor();

    return $token;
}

function GetDirectoryCurrent()
{
    return str_replace(basename($_SERVER['SCRIPT_FILENAME']), "", $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
}

function saveKeyword($value='')
{
    $sql = "INSERT INTO `key_word`(`key_word`) VALUES (:key)";
    $query = (new myDatabase())->connect()->prepare($sql);

    $query->bindParam("key",$value);
    $query->execute();
    
    $query->closeCursor();
}
 ?>