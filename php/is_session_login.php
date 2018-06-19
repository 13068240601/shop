<?php  
	header("Content-type:application/json");
	require_once 'common.php';
	session_start();
	$SqlTool = new SqlTool();
	@$res = $_SESSION["uid"];
	if(!$res){
		echo json_encode(["res"=>"no"]);
		// echo "no";
	}else{
		$sql = "select nickname,photo,rank from user where uid = $res";
		$res2 = $SqlTool->select($sql);
		$res3 = mysqli_fetch_row($res2);
		echo json_encode(["ok"=>1,"res"=>$res3]);
	}
?>