<?php  
	require_once 'common.php';
	session_start();
	@$uid = $_SESSION["uid"];
	@$cid = $_REQUEST["cid"];
	$SqlTool = new SqlTool();
	$sql = "delete from cart where cid = $cid and uid = $uid";
	$res = $SqlTool->select($sql);
	$result = mysqli_affected_rows($SqlTool->conn);
	if($result>0){
		echo '{"code":1,"msg":"删除成功"}';
	}else{
		echo '{"code":-1,"msg":"删除失败"}';
	}
?>