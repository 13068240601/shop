$(()=>{
	$.ajax({
		url:"../php/is_session_login.php",
		type:'GET',
		datatype:'json',
		success:function(res){
			if(res.res=="no"){
				location.href="../html/login.html"
			}else{
				$.ajax({
					url:"../php/user_home.php",
					type:"GET",
					success:function(res){
						$(".home_top .photo img").attr("src",res[9]);
						$(".user_info .nickname span").html(res[10]);
						$(".user_info .user_sign span").html(res[11]);
						$(".user_rank span").html(res[12]);
						$(".user_detail .name").html(res[4]);
						if(res[6]==0){
							$(".user_detail .sex").html("女");
						}else if(res[6]==1){
							$(".user_detail .sex").html("男");
						}
						$(".user_detail .birth").html(res[5]);
						$(".user_detail .work").html(res[7]);
						$(".user_detail .home").html(res[8]);
					}
				})
				$(window).scroll(function(){
					var top_nav = document.getElementById('top_nav');
					sTop = $(window).scrollTop();
					if(sTop>120){
						top_nav.classList.add("fixed");
					}else{
						top_nav.classList.remove("fixed");;
					}
					// var mTop1=$("#top_nav").offset().top;
					// var sTop=document.body.scrollTop
					// 				||document.documentElement.scrollTop;
					// var res = sTop - mTop1;
					// // console.log(mTop1,sTop)
					// if(res>=0){
					//    	$("#top_nav").css({"position":"fixed","top":"0"});
					//    }else if(mTop1<=120){
					//    	$("#top_nav").css({"position":"relative"});
					//    }
					var $floors = $(".floor");
					// console.log($floors)
					$floors.each(function(i,elem){
						// console.log(sTop)
						var $f = $(elem);
						var offsetTop = $f.offset().top;
						// console.log(offsetTop)
						if(offsetTop<sTop+innerHeight/2){
							// console.log(i)
							$(".top_nav>ul").children(":eq("+i+")").addClass("hover")
								.siblings().removeClass("hover");
						}
					})
					var $lis = $(".top_nav ul");
					$lis.children().click(function(e){
						e.preventDefault();
						var $li = $(this);
						var i = $li.index();
						var offsetTop = $(".floor:eq("+i+")").offset().top;
						$("html").stop(true).animate({
							scrollTop:offsetTop
						},500);
					})
				})
				// result = sTop - mTop;

				//用户首页修改框弹出
				$(".change a").click(function(e){
					e.preventDefault();
					$(".mask").css("display","block");
					$(".mask .home_update").css("display","block");
				})
				//用户首页修改框关闭
				$(".home_close").click(function(){
					$(".mask").css("display","none");
					$(".mask .home_update").css("display","none");
				})
				// 修改按钮点击事件
				$(".update_btn").click(function(){
					var uphoto = document.getElementById('uphoto');
					var reg = /\.(gif|jpg|jpeg|png||GIF|JPG|PNG)$/;
					if(uphoto.value==""||uphoto==null){
						alert("请上传图片");
						return false;
					}
					if(!reg.test(uphoto.value)){
						alert("图片类型必须是[.gif,jpeg,jpg,png]中的一种");  
						return false;  
					}else{
						var fileData = uphoto.files[0];  
						var size = fileData.size; 
						if (size/1024 >2048 ) {  
							alert("图片大小不能超过2M");
						} else {  
							var home_update = document.getElementById('home_update');
							home_update.submit(); 
						}  
					}
				})
				$(".up_user").click(function(e){
					e.preventDefault();
					$(".mask").css("display","block");
					$(".mask .user_detail_updata .u_list").css("display","block");
				})
				$(".btn_u_close").click(function(){
					$(".mask").css("display","none");
					$(".mask .user_detail_updata .u_list").css("display","none");
				})
				$(".btn_u_list").click(function(){
					var uname = $(".u_list .uname").val();
					var sex = $(".u_list input[name=sex]").val();
					var birth = $("#birth").val();
					var distpicker_work = [];
					distpicker_work.push($(".distpicker_work #eprovinceName").val());
					distpicker_work.push($(".distpicker_work #ecityName").val());
					distpicker_work.push($(".distpicker_work #edistrictName").val());
					distpicker_work.push($(".distpicker_work #distpicker_list").val());
					var distpicker_home = [];
					distpicker_home.push($(".distpicker_home #eprovinceName").val());
					distpicker_home.push($(".distpicker_home #ecityName").val());
					distpicker_home.push($(".distpicker_home #edistrictName").val());
					distpicker_home.push($(".distpicker_home #distpicker_list").val());
					distpicker_home = distpicker_home.join(",");
					distpicker_work = distpicker_work.join(",");
					// console.log(uname,sex,birth,distpicker_work,distpicker_home);
					$.ajax({
						url:"../php/up_user_list.php",
						type:"post",
						datatype:"json",
						data:{uname:uname,sex:sex,birth:birth,distpicker_work:distpicker_work,distpicker_home:distpicker_home},
						success:function(res){
							if(res.code==1){
								location=location;
							}else{
								alert(res.msg)
							}
						}
					})
					
				})
			}
		},
		error:function(res){
			console.log(res)
		}
	})
})