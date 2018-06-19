//读取location中含"title="的变量
var search=location.search;
//如果有search中含有"title="变量
if (search.indexOf("title=")!=-1) {
	//读取kw变量的值，保存到文本框中
	$("#search_text").val(decodeURI(search.split("=")[1]));
}
$("#search_right>input[type=button]").click(function(){
	var title = $("#search_text").val().trim();//trim清除空字符
	if(title.length!=0){
		location.href="products.html?title="+title;
	}
})
$("#search_text").keyup(function(e){
	if(e.keyCode==13){
		$("#search_right>input[type=button]").click();
	}
})	
var userCenter = document.querySelector(".userCenter");
var cart = document.querySelector(".cart");
userCenter.addEventListener("click",()=>{
	$.ajax({
		url:'../php/is_session_login.php',
		success:function(res){
			if(res.res=="no"){
				// location.href='../html/login.html'
				window.open('../html/login.html')
			}else{
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