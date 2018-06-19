<?php  
	header("Content-type:application/json");
	require 'common.php';
	$SqlTool = new SqlTool();
	$sql = "select * from navl_kind";
	$res = $SqlTool->select($sql);
	$all = mysqli_fetch_all($res,MYSQL_ASSOC);
	// $resultend=[];
	// for ($i=0; $i < count($all); $i++) { 
	// 	$result2 = $all[$i]["k_p"];
	// 	$sql3 = "select * from navl_list where kid=(select kid from navl_kind where k_p = '$result2')";
	// 	$res3 = $SqlTool->select($sql3);
	// 	$all3 = mysqli_fetch_all($res3,MYSQL_ASSOC);
	// 	$result4 = ["result"=>$all,"result3"=>$all3];
	// 	$resultend[] = $result4;
	// }
	echo json_encode($all);
?>