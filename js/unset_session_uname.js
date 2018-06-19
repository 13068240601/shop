function unset_session() {
	var login_header = document.getElementById('login_header');
	var regist_header = document.getElementById('regist_header');
	$.ajax({
		url:'../php/unset_session.php',
		success:function(res){
			if (res=="1") {
				login_header.innerHTML="<a href='login.html' >亲,请登录</a>";
				regist_header.innerHTML="<a href='register.html'>免费注册</a>";
			}
		}
	})
}