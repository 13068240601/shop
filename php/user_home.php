<?php 
	header("Content-type:application/json;charset=utf-8");
	require_once 'common.php';
	$SqlTool = new SqlTool();
	session_start();
	@$uid = $_SESSION["uid"];
	// $sql = "select nickname,mood,photo,rank from user where uid = $uid";
	$sql = "SELECT `uid`, `utel`, `upwd`, `uemail`, `uname`, `birth`, `sex`, `site`, `home`, `photo`, `nickname`, `mood`, `rank` FROM `user` where uid = $uid";
	// echo $sql;exit();
	$res = $SqlTool->select($sql);
	$output = mysqli_fetch_row($res);
	echo json_encode($output);
?>