<?php  
	session_start();
	if($_SESSION["uid"]) {
		unset($_SESSION["uid"]);
		echo "1";
	}
?>