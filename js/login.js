(function(){
	var uname = document.getElementById('uname');
	var upwd = document.getElementById('upwd');
	var authcode = document.getElementById('authcode');
	var btn_login = document.getElementById('btn_login');
	btn_login.onclick=function () {
		$.ajax({
			type:'post',
			url:'../php/login.php',
			data:{uname:uname.value,upwd:upwd.value,
				authcode:authcode.value},
			success:function(res){
				if (res=="1") {
					location="index.html";
				}else if(res=="2"){
					alert("密码错误");
				}else{
					alert("验证码错误");
				}
			}
		})
	}
})()