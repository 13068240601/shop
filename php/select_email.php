<?php 
	require 'common.php';
	$SqlTool = new SqlTool();
	$uemail = $_REQUEST["uemail"];
	$sql = "select * from user where uemail = '$uemail'";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_row($res);
	if ($result==null) {
		echo "0";
	}else{
		echo "1";
	}
?>