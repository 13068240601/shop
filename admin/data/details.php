<?php  
	header("Content-type:text/html;charset=utf-8");
	require_once 'connom.php';
	$SqlTool = new SqlTool();
	@$page_size = $_REQUEST["page_size"];
	@$page_num = $_REQUEST["page_num"];
	$page_count = 0;
	@$key = $_REQUEST["key"];
	$output = [];
	if ($page_num==""||$page_num==null) {
		$page_num = 1;
	}
	if ($page_size==""||$page_size==null) {
		$page_size = 8;
	}
	$page_now = $page_size*($page_num-1);
	$sql = "select count(pid) from product_details where title like '%$key%'";
	$res = $SqlTool->select($sql);
	$row = mysqli_fetch_row($res)[0];
	$output["page_num"] = $page_num;
	$output["page_count"] = ceil($row/$page_size);
	$sql = "select pid,title,price,spec,lname from product_details ";
	$sql .= " where title like '%$key%' ";
	$sql .= " limit $page_now,$page_size";
	
	$res = $SqlTool->select($sql);
	$output["details"] = mysqli_fetch_all($res);
	echo json_encode($output);
?>