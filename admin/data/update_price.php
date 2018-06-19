<?php  
	header("Content-type:text/html;charset=utf-8");
	require_once 'connom.php';
	$SqlTool = new SqlTool();
	$pid = $_REQUEST["pid"];
	$price = $_REQUEST["price"];
	$sql = "update product_details set price='$price' where pid=$pid";
	$res = $SqlTool->select($sql);
	$row = mysqli_affected_rows($SqlTool->conn);
	if($row>0){
		echo '{"code":1,"msg":"修改成功"}';
	}else{
		echo '{"code":-1,"msg":"修改失败"}';
	}
?>