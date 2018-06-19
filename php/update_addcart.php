<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	@$pid = $_REQUEST["pid"];
	@$cid = $_REQUEST["cid"];
	$sql = "select pnumber from product where pid = $pid";
	$res = $SqlTool->select($sql);
	$row1 = mysqli_fetch_row($res);//查库存

	$sql = "select count from cart where cid = $cid";
	$res = $SqlTool->select($sql);
	$row2 = mysqli_fetch_row($res);//查购物车数量
	if($row2>=$row1){
		die('{"code":-1,"msg":"库存不足"}');
	}else{
		$sql = "update cart set count=count+1 where cid = $cid";
	}
	$res = $SqlTool->select($sql);
	$result = mysqli_affected_rows($SqlTool->conn);
	if($result>0){
		echo '{"code":1,"msg":"修改完成"}';
	}else{
		echo '{"code":-2,"msg":"修改失败"}';
	}
?>