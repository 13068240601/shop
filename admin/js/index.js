$(()=>{
	$(".menu_section").on("click",".t_btn",function(e){
		e.preventDefault();
		$lis = $(this).next().children("li");
		var h = $lis.length;
		var height = (h + 1) * 30;
		// var border = "5px solid green";
		// $(this).css("border","1px solid #bbb")
		// 	.siblings().css("border",0);
		if($(this).parent().is('.acvive')){
			$(this).parent().css("height",30);
			$(this).parent().removeClass("active");
		}else{
			$(".menu_section>ul>li").css("height",30);
			$(this).parent().css("height",height);
			$(".menu_section>ul>li").removeClass("active");
			$(this).parent().addClass("active")
		}
	})
})