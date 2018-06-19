<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	$cid = $_REQUEST["cid"];
	$sql = "select count from cart where cid = $cid";
	$res = $SqlTool->select($sql);
	$row = mysqli_fetch_row($res);
	if($row[0]>1){
		$sql ="update cart set count = count-1 where cid = $cid";
	}else{
		$sql = "delete from cart where cid = $cid";
	}
	$res = $SqlTool->select($sql);
	$result = mysqli_affected_rows($SqlTool->conn);
	if($result>0){
		echo '{"code":1,"msg":"修改完成"}';
	}else{
		echo '{"code":-1,"msg":"修改失败"}';
	}
?>