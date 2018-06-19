<?php  
	header("Content-type:application/json;charset=utf-8");
	require_once 'common.php';
	$SqlTool = new SqlTool();
	session_start();
	@$uid = $_SESSION["uid"];
	@$uname = $_REQUEST["uname"];
	@$sex = $_REQUEST["sex"];
	@$birth = $_REQUEST["birth"];
	@$distpicker_work = $_REQUEST["distpicker_work"];
	@$distpicker_home = $_REQUEST["distpicker_home"];
	$sql = "update user set ";
	if($uname!=null || $uname!=""){
		$sql .= "uname='$uname',";
	}
	if($sex!=null || $sex!=""){
		$sql .= "sex=$sex,";
	}
	if($birth!=null || $birth!=""){
		$sql .= "birth='$birth',";
	}
	if($distpicker_work!=null || $distpicker_work!=""){
		$sql .= "site='$distpicker_work',";
	}
	if($distpicker_home!=null || $distpicker_home!=""){
		$sql .= "home='$distpicker_home'";
	}
	$sql .= " where uid = $uid";
	// echo $sql;exit();
	$res = $SqlTool->select($sql);
	$row = mysqli_affected_rows($SqlTool->conn);
	if($row>0){
		echo '{"code":1,"msg":"修改成功"}';
	}else{
		echo '{"code":-1,"msg":"修改失败"}';
	}
?>