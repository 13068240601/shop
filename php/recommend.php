<?php  
	require 'common.php';
	$SqlTool = new SqlTool();
	$sql = "select * from recommed";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_all($res,MYSQL_ASSOC);
	echo json_encode($result);
?>