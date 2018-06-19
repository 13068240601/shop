<?php  
	header('Content-type:application/json');
	require 'common.php';
	$SqlTool = new SqlTool();
	$sql = "select * from lunbo";
	$res = $SqlTool->select($sql);
	$all = mysqli_fetch_all($res,MYSQL_ASSOC);
	$result = json_encode($all);
	echo $result;
?>