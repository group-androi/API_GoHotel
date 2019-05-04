<?php 
	

	$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));

	print_r(empty($request[2]));

	echo $demo_element.'<br />';

	echo $_SERVER['REQUEST_METHOD'];
	echo '<pre>';

        print_r(json_encode($_REQUEST));
        print_r(json_encode($_POST));//Generate a random string.
        echo "</pre>";
$token = openssl_random_pseudo_bytes(32);
 
//Convert the binary data into hexadecimal representation.
$token = bin2hex(openssl_random_pseudo_bytes(32));
 
//Print it out for example purposes.
echo $token;
  ?>