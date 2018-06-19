<?php 
	header("Access-Control-Allow-Origin:*");
	header("Content-type:application/json;charset=utf-8");
	require_once 'common.php';
	@$ptitle=$_REQUEST["title"];
	@$pno=$_REQUEST["pno"];
	if ($pno==null) {
		$pno=0;
	}
	// echo $ptitle;
	// exit();
	$output=[
		"count"=>0,//商品总数
		"pageSize"=>12,
		"pageCount"=>0,
		"pageNo"=>$pno,
		"plist"=>[],
	];
	$SqlTool = new SqlTool();
	$sql = "select * from product ";
	$ptitles = explode(" ",$ptitle);
	for ($i=0; $i < count($ptitles); $i++) { 
		$ptitles[$i] = " ptitle like '%".$ptitles[$i]."%' ";
	}
	$sql .= " where ".implode(" and ", $ptitles);
	$res = $SqlTool->select($sql);
	$result = mysqli_fetch_all($res);
	$output["count"]=count($result);//总条数
	$output["pageCount"]=ceil($output["count"]/$output["pageSize"]);//总页数
	$sql .=" limit ".$output["pageNo"]*$output["pageSize"]." , ".$output["pageSize"];
	// echo $sql;exit();
	$res2 = $SqlTool->select($sql);
	$result2 = mysqli_fetch_all($res2);
	$output["plist"] = $result2;
	echo json_encode($output);
?>