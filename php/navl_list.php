<?php
	header('Content-type:application/json');
	require 'common.php';
	$SqlTool = new SqlTool();
	$kid = $_REQUEST["kid"];
	$sql = "select * from navl_list where kid = '$kid'";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_all($res);
	echo json_encode($result);
?>