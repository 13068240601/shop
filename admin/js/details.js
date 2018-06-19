$(()=>{
	$(".nav>li>ul").on("click","a",function(e){
		e.preventDefault();
		var show = $(this).attr("href");
		$(show).show()
			.siblings().hide();
	})
	function load_details(page_size=8,page_num=1,key){
		// page_size = page_size || 8;
		// page_now = page_now ||1;
		$.ajax({
			url:"data/details.php",
			data:{page_size:page_size,page_num:page_num,key:key},
			dataType:"json",
			success:function(data){
				// console.log(data)
				var {page_num,page_count,details} = data;
				var html="";
				for(var i=0;i<details.length;i++){
					// console.log(details[i]);
					html +=`
						<tr>
							<td><input type="checkbox"></td>
							<td>${details[i][0]}</td>
							<td>图片</td>
							<td>${details[i][4]}</td>
							<td>${details[i][1]}</td>
							<td>${details[i][3]}</td>
							<td>￥${details[i][2]}</td>
							<td>
								<a href="#" data-pid=${details[i][0]} data-price=${details[i][2]} data-num=${page_num} class="btn_update">修改</a>
								<a href="#" data-pid=${details[i][0]} class="btn_del">删除</a>
							</td>
						</tr>
					`;
				}
				$("#details_list").html(html);
				var html = "";
				var page_num = parseInt(page_num);
				if(page_num-1>0){
					html +=`<li class="up_box"><a href="#" data-num=${page_num} class="page_up">上一页</a></li>
							<li><a href="#" data-num=${page_num-1}>${page_num-1}</a></li>`;
				}
				html +=	`<li><a href="#" data-num=${page_num}>${page_num}</a></li>`;
				if(page_num+1<page_count){
						html +=	`<li><a href="#" data-num=${page_num+1}>${page_num+1}</a></li>
								<li class="next_box"><a href="#" data-num=${page_num} class="page_next">下一页</a></li>`;
				}
				$(".page_num ul").html(html);
				$(".page_num>ul a").each(function(i,even){
					var html = $(even).html();
					if(html!="上一页"&&html!="下一页"&&html==page_num){
						$(even).addClass("active");
					}
				})
			},
			error:function(){
				console.log("网络错误");
			}
		})
	}
	load_details();
	var key = null;
	$("#key").keyup(function(e){
		key = $("#key").val();
		if(e.keyCode==13){
			load_details(8,1,key);
		}
	})
	var page_size = null;
	$("#select").change(function(){
		page_size = $("#select").val();
		load_details(page_size,1,key);
	})
	$(".page_num").on("click","a",function(e){
		e.preventDefault();
		page_num = $(this).data("num");
		var html = $(this).html();
		if(html=="上一页"){
			load_details(page_size,page_num-1,key);
		}else if(html=="下一页"){
			load_details(page_size,page_num+1,key);
		}else{
			load_details(page_size,page_num,key);
		}
	})
	$("#details_list").on("click","a",function(e){
		e.preventDefault();
		if($(this).html()=="修改"){
			var pid = $(this).data("pid");
			var price = $(this).data("price");
			$(".update_price").show();
			$(".update_price .title").html(`修改id为${pid}的商品价格`);
			$(".update_price input").val(price);
			$(".update_price .update").data("pid",pid);
		}else{
			var pid = $(this).data("pid");
			if(!confirm("是否删除该数据")){
				return false;
			}
			$.ajax({
				url:"data/delete_pid.php",
				data:{pid:pid},
				success:function(data){
					load_details(page_size,page_num,key);
				}
			})
		}

	})
	$(".update_price").on("click","button",function(){
		if($(this).is(".update")){
			var pid = $(this).data("pid");
			var price = $(".update_price .price").val();
			var page_num = $(this).data("page_num");
			$.ajax({
				url:"data/update_price.php",
				data:{pid:pid,price:price},
				dataType:"json",
				success:function(res){
					if(res.code==1){
						load_details(page_size,page_num,key);
						$(".update_price").hide();
					}
				}
			})
		}
		if($(this).is(".close")){
			$(".update_price").hide();
		}
	})
})