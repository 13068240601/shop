<?php  
	require 'common.php';
	session_start();
	@$uname = $_REQUEST["uname"];
	@$upwd = $_REQUEST["upwd"];
	if ($_SESSION['authcode']==$_REQUEST["authcode"]) {
		$SqlTool = new SqlTool();
		if (preg_match('/^1([0-9]{9})/',$uname)) {
			$sql = "select upwd,uid from user where utel = '$uname'";
			$res = $SqlTool->select($sql);
			$result = mysqli_fetch_row($res);
			if($result[0]==$upwd){
				echo "1";
				$_SESSION["uid"]=$result[1];
			}else{
				echo "2";
			}
		}else{
			$sql = "select upwd,uid from user where uemail = '$uname'";
			$res = $SqlTool->select($sql);
			$result = mysqli_fetch_row($res);
			if($result[0]==$upwd){
				echo "1";
				$_SESSION["uid"]=$result[1];
			}else{
				echo "2";
			}
		}
	}else{
		echo "3";//验证码错误
	}
?>