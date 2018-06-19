// (fubction(){
	var unset_session=null;
	function sdfads(){
		return new Promise(function(open){
			var login_header = document.getElementById('login_header');
			var regist_header = document.getElementById('regist_header');
			$.ajax({
				url:'../php/is_session_login.php',
				success:function(res){
					if(res.res!="no"){
						login_header.innerHTML="<a href='#'>" + res.res[0] + "<a>";
						regist_header.innerHTML="<a href='#' id='unset_session'>退出登录<a>";
						unset_session = document.getElementById('unset_session');
						open();
					}
					// console.log(res);
				}
				
			})
		})
	}

	// "use strict";
	sdfads().then(function(){
		unset_session.onclick = function(e){
			return new Promise(function(open){
				e.preventDefault();//阻止默认事件
				var login_header = document.getElementById('login_header');
				var regist_header = document.getElementById('regist_header');
				$.ajax({
					url:'../php/unset_session.php',
					success:function(res){
						if (res=="1") {
							location=location;
							login_header.innerHTML="<a href='login.html' >亲,请登录</a>";
							regist_header.innerHTML="<a href='register.html'>免费注册</a>";
						}
					}
				})
			})
		}
	});
// })();