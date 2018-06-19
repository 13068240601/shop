$(()=>{
	$.ajax({
		url:"../php/is_session_login.php",
		success:function(res){
			if(res.res=="no"){
				location.href="../html/login.html"
			}else{
				function loadcart() {
					$.ajax({
						url: "../php/loadcart.php",
						dataType: "json",
						success: function (data) {
							var { id, details } = data;
							var html = "";
							var total = 0;
							for (var d = 0; d < details.length; d++) {
								// if(details[d].length==0){
								// 	continue;
								// }
								// console.log(details[d][0].price)
								console.log(id[d]);
								var count = parseInt(id[d].count);
								var price = parseInt(details[d][0].price);
								var sum = count * price;
								total += sum;
								html += `
									<ul class="cart-list">
										<li><input type="checkbox" data-id="${id[d].cid}" class="selectAll"></li>
										<li>
											<a href="../html/product_details.html?pid=${id[d].pid}">${details[d][0].title}</a>
										</li>
										<li>${details[d][0].spec}</li>
										<li class="number-box">
											<a href="javascript:;" data-id="${id[d].cid}">-</a>
											<input type="text" class="number" value="${id[d].count}">
											<a href="javascript:;" data-cid="${id[d].cid}" data-pid="${id[d].pid}">+</a>
										</li>
										<li class="price">￥${details[d][0].price}</li>
										<li class="sum">￥${sum}</li>
										<li><a name="${id[d].cid}" href="javascript:;" class="delete">删除</a></li>
									</ul>
								`;
							}
							$(".main .cart-box").html(html);
							var html = `合计:￥${total}`;
							$(".operate-list .total").html(html);
						}
					})
				}
				loadcart();
				$(".cart-box").on("click", "a", function (e) {
					// e.preventDefault();
					var number = $(this).siblings("input").val();
					var btn = $(this).html();
					if (btn === "+") {
						var cid = $(this).attr("data-cid");
						var pid = $(this).attr("data-pid");
						$.ajax({
							url: "../php/update_addcart.php",
							dataType: "json",
							data: { cid: cid, pid: pid },
							success: function (res) {
								if (res.code === 1) {
									loadcart();
								} else {
									alert(res.msg);
								}
							}
						})
					} else if (btn === "-") {
						var cid = $(this).attr("data-id");
						$.ajax({
							url: "../php/update_subcart.php",
							dataType: "json",
							data: { cid: cid },
							success: function (res) {
								if (res.code === 1) {
									loadcart();
								} else {
									alert(res.msg);
								}
							}
						})
					} else if (btn === "删除") {
						var cid = $(this).attr("name");
						$.ajax({
							url: "../php/deletecart.php",
							data: { cid: cid },
							dataType: "json",
							success: function (res) {
								if (res.code === 1) {
									loadcart();
								} else {
									alert(res.msg);
								}
							}
						})
					}
				})
				//全选
				$("#Allcheck").click(function () {
					var res = $(this).prop("checked");
					$(".cart-box .cart-list input").prop("checked", res);
				})
				$(".cart-box").on("click", "input[type=checkbox]", function () {
					//创建变量保存商品前复选框选中数量
					var selectCount = 0;
					//创建循环获取每一个商品前复选框
					var allCount = $(".cart-box input[type=checkbox]").length;
					$(".cart-box input[type=checkbox]").each(function (i, elem) {
						var res = $(elem).prop("checked");
						if (res) {
							selectCount++;
						}
					})
					if (selectCount == allCount) {
						$("#Allcheck").prop("checked", true);
					} else {
						$("#Allcheck").prop("checked", false);
					}
				})
				//批量删除
				$(".deleteAll").click(function (e) {
					e.preventDefault();
					var cid = [];
					$(".cart-box input[type=checkbox]").each(function (i, elem) {
						var res = $(elem).prop("checked");
						if (res) {
							cid.push($(elem).data("id"));//向数组尾部追加元素
						}
					})
					// console.log(cid)
					cid = JSON.stringify(cid);
					$.ajax({
						url: "../php/deletecart_all.php",
						type: "GET",
						dataType: "json",
						data: { cid: cid },
						success: function (res) {
							if (res.code == 1) {
								loadcart();
							} else {
								alert(res.msg);
							}
						}
					})
				})
			}
		}
	})
	
})