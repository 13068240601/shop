<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	session_start();
	@$uid = $_SESSION["uid"];
	@$nickname = $_REQUEST["nickname"];
	@$umood = $_REQUEST["umood"];
	$output = [];
	if ($uid==null) {
		header('Location:../html/login.html');
	}
	$file = $_FILES["uphoto"];
	$photo_name = $file["name"];
	$size = $file["size"]/1000;
	if($size>2000){
		die('{"code":-2,"msg":"图片过大"}');
	}
	$ext = strstr($photo_name,".");//截取.后面的内容
	$file_src = "../img/userPhoto/".$uid.time().$ext;
	move_uploaded_file($_FILES["uphoto"]["tmp_name"],$file_src);
	// echo $_FILES["uphoto"]["error"];exit();
	// $output["photo"]=1;
	$sql = "update user set ";
	if($nickname!=null){
		$sql .="nickname = '$nickname',";
	}
	if($umood!=null){
		$sql .= "mood = '$umood',";
	}
	$sql .= "photo = '$file_src' where uid = $uid";
	$res = $SqlTool->select($sql);
	$row = mysqli_affected_rows($SqlTool
		->conn);
	if($row>0){
		header("Location:../html/userCenter.html");
	}
?>