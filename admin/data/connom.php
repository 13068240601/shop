<?php 
	class SqlTool{
		private $host = "localhost";
	private $ruser = "root";
	private $rpwd = "123456";
	private $db = "shop";
		public function SqlTool(){
			$this->conn = @mysqli_connect($this->host,$this->ruser,$this->rpwd,$this->db,3306) or die(mysql_error());
			mysqli_query($this->conn,"set names utf8");
		}
		public function select($sql){
			$res = mysqli_query($this->conn,$sql);
			return $res;
		}

	} 
?>