<?php 
	
//echo $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

require('./helper/helper.php');

echo GetDirectoryCurrent();

echo "<br/>";

$token = openssl_random_pseudo_bytes(32);
 
//Convert the binary data into hexadecimal representation.
$token = bin2hex(openssl_random_pseudo_bytes(32));

GetIdUserFromToken();

//Print it out for example purposes.
echo $token;
  ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 </head>
 <body>
 	<form action="http://ttngoc653.byethost4.com/bookhotel/user/create.php" method="post">
 		<input type="text" name="phone" />
 		<input type="password" name="password" />
 		<input type="text" name="birthday" />
 		<input type="text" name="gender" />
 		<input type="text" name="device_id" />
 	</form>
 </body>
 </html>