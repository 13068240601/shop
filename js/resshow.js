(function(){
	var tel = document.getElementById("utel");
	var pwd = document.getElementById("upwd");
	var pwds = document.getElementById("cpwd");
	var email = document.getElementById("uemail");
	var resgister_btn = document.getElementById("resgister_btn");
	var utel_show = document.getElementById("utel_show");
	var pwd_show = document.getElementById("pwd_show");
	var cpwd_show = document.getElementById("cpwd_show");
	var email_show = document.getElementById("email_show");
	var authcode_show = document.getElementById("authcode_show");
	var isFinish_tel = 1;
	var isFinish_pwd = 1;
	var isFinish_cpwd = 1;
	var isFinish_email_pwd_cpwd_email = 1;
	utel.onblur = function(){
		// uname = document.getElementById("uname").value;
		if (tel.value == "") {
			utel_show.innerHTML ="<font color=red>电话不能为空</font>";
			isFinish_tel = 1;
		}else{
			isFinish_tel = 0;
			$.ajax({
				url:'../php/select_tel.php',
				data:{utel:tel.value},
				success:function(res){
					if (res=="1") {
						utel_show.innerHTML ="<font color=red>电话号码已被注册</font>";
						isFinish_tel = 1;
					}else{
						utel_show.innerHTML ="<font color=green>允许注册</font>";
						isFinish_tel = 0;
					}
				}
			})
		}
	}
	
	upwd.onblur = function(){
		if (pwd.value == "") { 
			pwd_show.innerHTML = "<font color=red>密码不能为空</font>";
			isFinish_pwd = 1;
		}else{
			pwd_show.innerHTML = "<font color=green>允许注册</font>";
			isFinish_pwd = 0;
		}
	}
	pwds.onblur = function(){
		if (pwd.value != pwds.value) {
			cpwd_show.innerHTML = "<font color=red>两次密码输入不一致</font>";
			isFinish_cpwd = 1;
		}else{
			if (cpwd_show.value == '' || cpwd_show.value ==null){
				cpwd_show.innerHTML = "<font color=red>请再次输入密码</font>";
			}else{
				cpwd_show.innerHTML = "<font color=green>允许注册</font>";
			}
			isFinish_cpwd = 0;
		}
	}
	uemail.onblur = function(){
		if (email.value == "") {
			email_show.innerHTML = "<font color=red>邮箱不能为空</font>";
			isFinish_email = 1;
		}else{
			isFinish_email = 0;
			$.ajax({
				url:'../php/select_email.php',
				data:{uemail:email.value},
				success:function(res){
					if (res=="1") {
						email_show.innerHTML ="<font color=red>邮箱已被注册</font>";
						isFinish_mail = 1;
					}else{
						email_show.innerHTML ="<font color=green>允许注册</font>";
						isFinish_mail = 0;
					}
				}
			})
		}
	}
	resgister_btn.onclick = function() {
		if (isFinish_tel==1||isFinish_pwd ==1||isFinish_cpwd ==1||isFinish_email==1) {
			alert("请正确填完资料");
		}else{
			$.ajax({
				url:'../php/resshow.php',
				data:{uname:tel.value,upwd:pwd.value,uemail:email.value},
				success:function(res){
					if (res=="1") {
						location="login.html";
					}else{
						alert("注册失败");
					}
				}
			})
		}
		
	}
})()

