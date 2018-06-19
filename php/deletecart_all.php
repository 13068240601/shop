<?php  
	require_once 'common.php';
	session_start();
	@$cid = $_REQUEST["cid"];
	$cid = ltrim($cid,'[');//去掉第一位字符
	$cid = rtrim($cid,']');//去掉最后一位字符
	@$uid = $_SESSION["uid"];
	$SqlTool = new SqlTool();
	$sql = "delete from cart ";
	$ids = explode(",",$cid);
	for($i=0;$i<count($ids);$i++){
		$ids[$i] =  " cid = ".$ids[$i];
	}
	$sql .= " where ".implode(" or ",$ids);
	$sql .= " and uid = $uid";
	// echo $sql;exit();
	$res = $SqlTool->select($sql);
	$row = mysqli_affected_rows($SqlTool->conn);
	if($row>0){
		echo '{"code":1,"msg":"删除成功"}';
	}else{
		echo '{"code":-1,"msg":"删除失败"}';
	}
?>