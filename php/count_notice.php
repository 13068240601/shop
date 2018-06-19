<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	$sql = "select count(notid) from notice";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_row($res);
	$count_id = $result[0]; 
	echo $count_id;
?>