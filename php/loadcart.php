<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	session_start();
	@$uid = $_SESSION["uid"];
	// $uid = 34;
	$output = [];
	$pid = [];
	if($uid!=null){
		$sql = "select cid,pid,count from cart where uid = $uid";
		$res = $SqlTool->select($sql);
		$result = mysqli_fetch_all($res,MYSQL_ASSOC);
		$id=[];
		for ($i=0; $i < count($result); $i++) {
			$id[$i] = $result[$i];
		}
		$output["id"]=$id;
		$resultArr = [];
		for ($i=0; $i < count($result); $i++) { 
			$pid = $result[$i]["pid"];
			$sql ="select title,price,spec from product_details where pid =$pid";
			$res = $SqlTool->select($sql);
			$resultArr[$i] = mysqli_fetch_all($res,MYSQL_ASSOC);
		}
		$output["details"]=$resultArr;
		echo json_encode($output);
	}
?>