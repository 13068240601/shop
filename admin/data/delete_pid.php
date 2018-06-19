<?php  
	require_once 'connom.php';
	$SqlTool = new SqlTool();
	$pid = $_REQUEST["pid"];
	$sql = "delete from product_details where pid = $pid";
	$res = $SqlTool->select($sql);
	$row = mysqli_affected_rows($SqlTool->conn);
	if($row>0){
		echo '{"code":1,"msg":"删除成功"}';
	}else{
		echo '{"code":-1,"msg":"删除失败"}';
	}
?>