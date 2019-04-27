<?php 
	
	require("./folderChild/child_demo1.php");


	$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));

	print_r(empty($request[2]));

	echo $demo_element.'<br />';

	echo $_SERVER['REQUEST_METHOD'];
	echo '<pre>';

        print_r(json_encode($_REQUEST));
        print_r(json_encode($_POST));
  ?>