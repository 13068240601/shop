$(()=>{
	$.ajax({
		url:"../php/is_session_login.php",
		success:function(res){
			$(".user-box .uname span").html(res.res[0]);
			$(".user-box .urank span").html(res.res[2]);
			$(".user-box .protrait img").attr("src",res.res[1]);
		}
	})
	$(".exit_btn").click(function(){
		$.ajax({
			url:"../php/unset_session.php",
			success:function(res){
				if(res=="1"){
					location=location;
				}
			}
		})
	})
})
var userCenter = document.querySelector(".userCenterR");
var cart = document.querySelector(".cartR");
userCenter.addEventListener("click", () => {
	$.ajax({
		url: '../php/is_session_login.php',
		success: function (res) {
			if (res.res == "no") {
				// location.href='../html/login.html'
				window.open('../html/login.html')
			} else {
				// location.href='../html/userCenter.html'
				window.open('../html/userCenter.html')
			}
		}
	})
})
cart.addEventListener("click", () => {
	$.ajax({
		url: '../php/is_session_login.php',
		success: function (res) {
			if (res.res == "no") {
				// location.href = '../html/login.html'
				window.open('../html/login.html')
			} else {
				// location.href = '../html/cart.html'
				window.open('../html/cart.html')
			}
		}
	})
})
window.onscroll = function () {
	this.gt = document.getElementById("go_top");
	this.gt.onclick = function () {
		$("body,html").animate({ scrollTop: 0 }, 500);
	}
}