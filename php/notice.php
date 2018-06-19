<?php  
	require_once 'common.php';
	$notice = $_REQUEST["notice"];
	$size = $_REQUEST["size"];
	$SqlTool = new SqlTool();
	$sql = "select * from notice limit $notice,$size";
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_all($res);
	echo json_encode($result);
?>