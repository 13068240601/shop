<?php 
	require 'common.php';
	$SqlTool = new SqlTool();
	$utel = $_REQUEST["utel"];
	$sql = "select * from user where utel = '$utel'";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_row($res);
	if ($result==null) {
		echo "0";
	}else{
		echo "1";
	}
?>