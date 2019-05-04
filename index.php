<?php 
	
//echo $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

require('./helper/helper.php');

echo GetDirectoryCurrent();

echo "<br/>";

$token = openssl_random_pseudo_bytes(32);
 
//Convert the binary data into hexadecimal representation.
$token = bin2hex(openssl_random_pseudo_bytes(32));
 
//Print it out for example purposes.
echo $token;
  ?>