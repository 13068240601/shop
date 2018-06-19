<?php  
	require 'common.php';
	$SqlTool = new SqlTool();
	$utel = $_REQUEST["uname"];
	$upwd = $_REQUEST["upwd"];
	$uemail = $_REQUEST["uemail"];
	// $sql2 = "select * from user where uname = '$uname'";
	$sql2 = "insert into user(utel,upwd,uemail) 
	values('$utel','$upwd','$uemail')";
	// echo $sql2;exit();
	$res = $SqlTool->select($sql2);
	$result = mysqli_affected_rows($SqlTool->conn);
	if ($result>0) {
		echo "1";
	}else{
		echo "0";
	}
?>