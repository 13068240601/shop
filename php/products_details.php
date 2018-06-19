<?php  
	require_once 'common.php';
	$SqlTool = new SqlTool();
	$output = [];
	@$pid = $_REQUEST["pid"];
	if ($pid!=null) {
		$sql = "select pnumber from product where pid = $pid";
		$result = $SqlTool->select($sql);
		$pnumber = mysqli_fetch_row($result);
		$output["pnumber"]=$pnumber;
		$sql = "select * from product_details where pid = $pid";
		// echo $sql;
		$result = $SqlTool->select($sql);
		$row = mysqli_fetch_row($result);
		$output["details"] = $row;
		$sql = "select * from product_pic where laptop_id=$pid";
		$result = $SqlTool->select($sql);
		$output["imgs"] = mysqli_fetch_all($result,1);
		$fid = $row[1];
		$sql = "select pid,spec from product_details where family_id = $fid";
		$result = $SqlTool->select($sql);
		$output["spec"] = mysqli_fetch_all($result,1);
		// var_dump($output);
		echo json_encode($output);
	}
?>