$(()=>{
	function loadpage(pageNo){
		pageNo = pageNo || 0;
		var search=location.search;
		if (search!=="") {
			var title=search.split("=")[1];
				title=decodeURI(title);
				var html="";
				$.ajax({
					data:{title:title,pno:pageNo},
					url:"../php/product.php",
					success:function(res){
						var {count,pageSize,pageCount,pageNo,plist} = res;
						html +=`<ul id="show-list" class="show-list">`;
						for (var i of plist) {
								html +=`
							<li>
								<a href="product_details.html?pid=${i[0]}" target="_blank">
									<img src="${i[2]}" alt="">
								</a>
								<h3>¥<span>${i[4]}</span></h3>
								<p>
									<a href="product_details.html?pid=${i[0]}" target="_blank">${i[3]}</a>
								</p>
								<div>
									<span class="reduce">库存:${i[5]}</span>
									<a href="product_details.html?pid=${i[0]}" target="_blank" class="addCart" data-lid="${i[0]}">查看详情</a>
								</div>
							</li>`;
						}
						html +=`</ul>`;
						html += `
						<div id="pages" class="pages">
							<p>共${count}件商品,总${pageCount}页,现在在${parseInt(pageNo)+1}页</p>
							<a href="javascript:;" class="first disabled">首页</a>
							<a href="javascript:;" class="previous disabled" data-pno="${pageNo}">上一页</a>
							<a href="javascript:;" class="next" data-pno="${pageNo}">下一页</a>
							<a href="javascript:;" class="last" data-pno="${pageCount}">尾页</a>
							<input type="text" size="10"><a href="javascript:;" class="jump">跳转</a>
				        </div>`;
						$("#product-list").html(html);	
						handclick();
					}
				})
		}
	}
	loadpage();
	function handclick(){
		var pages = $("#pages");
		pages.on("click","a",function(e){	
			e.preventDefault();
			if ($(this).is("a.first")) {

				loadpage(0)
				// console.log(1)
			}else if ($(this).is("a.last")) {

				var pageCount = $(this).data("pno");
				loadpage(pageCount-1)
			}else if ($(this).is("a.previous")) {
				var pno = $(this).data("pno");
				if(pno>0){
					loadpage(pno-1);
				}
			}else if ($(this).is("a.next")) {
				var pno = $(this).data("pno");
				var pageCount = $("a.last").data("pno");
				if(pno<pageCount-1){
					loadpage(parseInt(pno+1));
				}
			}else if($(this).is("a.jump")){
				var pno = $("#pages>input").val();
				var pageCount = $("a.last").data("pno");
				if (pno<=pageCount) {
					loadpage(pno-1);
				}
			}
		})
	}
})