<?php  
	header("Content-type:application/json;charset=utf-8");
	require_once 'common.php';
	session_start();
	$SqlTool = new SqlTool();
	@$pid = $_REQUEST["pid"];
	@$count = $_REQUEST["count"];
	@$uid = $_SESSION["uid"];
	// @$uid = 34;
	if($pid!=null&&$count!=null&&$uid!=null){
		$sql = "select pid from cart where pid = $pid";
		$res = $SqlTool->select($sql);
		$result = mysqli_fetch_row($res);
		if($result[0]==$pid){
			$sql = "update cart set count=count+$count where uid=$uid and pid = $pid";
		}else{
			$sql = "insert into cart(uid,pid,count) value($uid,$pid,$count)";
		}
		$res = $SqlTool->select($sql);
		echo '{"code":1,"msg":"加入购物车成功"}';
	}
?>