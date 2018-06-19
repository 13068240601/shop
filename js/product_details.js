$(()=>{
	if(location.search!==""){
		var pid=location.search.split("=")[1];
		$.getJSON(
			"../php/products_details.php",
			"pid=" + pid,
			success
		)
		function success(data){
			var {spec,details,imgs,pnumber} = data;
			var html = "";
			for (var img of imgs){
				html += 
				`
					<li class="i1"><img src="../${img.sm}" data-md="../${img.md}" data-lg="../${img.lg}"></li>		
				`;
			}
			$("#icon_list").html(html);
			var html = "";
			html += 
			`
				<h1>${details[2]}</h1>
		        <h3>
					<a href="javascript:;">${details[3]}</a>
		        </h3>
		        <div class="price-promise">
					<div class="price">
						<b>零售价：</b>
						<span>￥${details[4]}</span>
					</div>
					<div class="promise">
						<b>服务承诺：${details[5]}</b>
					</div>
		        </div>
		        <!-- 客服 -->
		        <p class="parameter">
					<b>客服：</b>
					<a href="#"><span>联系客服</span></a>
		        </p>
		        <!-- 规格 -->
		        <div class="spec clear">
					<p>规格：</p>
					<div>
						<a href="product_details.html?pid=${spec[0].pid}" data-pid="${spec[0].pid}">${spec[0].spec}</a>
						<a href="product_details.html?pid=${spec[1].pid}" data-pid="${spec[1].pid}">${spec[1].spec}</a>
						<a href="product_details.html?pid=${spec[2].pid}" data-pid="${spec[2].pid}">${spec[2].spec}</a>
						<a href="product_details.html?pid=${spec[3].pid}" data-pid="${spec[3].pid}">${spec[3].spec}</a>
					</div>
		        </div>
		        <!-- 数量 -->
		        <p class="account">
		        	<span>库存：${pnumber}&nbsp;&nbsp;&nbsp;</span>
					<span>数量：</span>
					<button class="number-reduce">-</button>
					<input type="text" value="1">
					<button class="number-add">+</button>
		        </p>
		        <!-- 购买部分 -->
		        <div class="shops">
					<a href="javascript:;" class="buy">立即购买</a>
					<a href="javascript:;" class="cart">
						加入购物车
					</a>
					<a href="javascript:;" class="collection">
						收藏
					</a>
		        </div>
			`;
			$("#show-details").html(html);
			var $aSelected = $(".spec>div>a");
			// $.each($aSelected,function(i,elem){
			// 	console.log(elem)
			// })
			for(var a of $aSelected){
				if(a.dataset["pid"]==pid){
					a.style.border="2px solid #16AAF2";
				}
			}
			var mImg = document.getElementById('mImg');
			mImg.src = "../" + imgs[0].md;
			var lgDiv=document.getElementById("largeDiv");
			lgDiv.style.backgroundImage="url(../"+imgs[0].lg+")";
			var ulImgs = document.getElementById("icon_list");
			var liWidth = 55;
			ulImgs.style.width = liWidth * imgs.length + (imgs.length-1)*5 + "px";
			ulImgs.onmouseover=function(e){
				var tar = e.target;
				if (tar.nodeName==="IMG") {
					mImg.src=tar.dataset.md;
					lgDiv.style.backgroundImage="url("+tar.dataset["lg"]+")";
					// console.log(imgs[0].lg)
				}
			}
			var abackward=document.querySelector("#preview>h1>a.backward"),
				aforward=document.querySelector("#preview>h1>a.forward"),
				moved=0;
			if (imgs.length<5) {
				abackward.className="backward disabled";
				aforward.className="forward disabled";
			}
			chang();
			aforward.onclick=function(){
				if (this.className.indexOf("disabled")===-1) {
					moved++;
					ulImgs.style.left=liWidth*moved+(moved-1)*5+"px";
					chang();
				}
			}
			abackward.onclick=function(){
				if (this.className.indexOf("disabled")===-1) {
					moved--;
					ulImgs.style.left=liWidth*moved+(moved-1)*5+"px";
					chang();
				}
			}
			var n = imgs.length-5;
			function chang(){
				if (moved==0) {
					aforward.className="forward disabled";
				}else if(moved==n-1){
					abackward.className="backward disabled";
					// console.log(1)
				}else{
					abackward.className="backward";
					aforward.className="forward";
				}
			}
			var mask = document.getElementById('mask'),
				smask = document.getElementById('superMask');
			smask.onmouseover=function(){
				mask.style.display="block";
				lgDiv.style.display="block";
			}
			smask.onmouseout=function(){
				mask.style.display="none";
				lgDiv.style.display="none";
			}
			var msize=175,max = 175;
			smask.onmousemove=function(e){
				var top = e.offsetY-msize/2,
					left = e.offsetX-msize/2;
				if (top<0) {
					top=0;
				}else if(top>175){
					top = 175;
				}
				if (left<0) {
					left=0;
				}else if(left>175){
					left = 175;
				}
				mask.style.top=top+"px";
				mask.style.left=left+"px";
				lgDiv.style.backgroundPosition=-16/7*left+"px " +(-16/7*top)+"px";
			}
			var btn_reduce = document.querySelector("#show-details>p.account>button.number-reduce");
			var num = document.querySelector("#show-details>p.account>input");
			var btn_add = document.querySelector("#show-details>p.account>button.number-add");
			var n = parseInt(num.value);
			btn_reduce.onclick=function(){
				if (n>1) {
					n--;
					num.value=n;
				}
			}
			btn_add.onclick=function(){
				if (n<pnumber) {
					n++;
					num.value=n;
				}
			}
			
			var add_cart = document.querySelector("#show-details>div.shops>a.cart");
			add_cart.onclick=function(){
				var count = parseInt(num.value);
				$.ajax({
					url:"../php/is_session_login.php",
					success:function(res){
						if (res.ok===1) {
							$.ajax({
								url:"../php/add_cart.php",
								data:{count:count,pid:parseInt(pid)},
								success:function(data){
									alert(data.msg);
								}
							})
						}else{
							location.href="../html/login.html"
						}
					}
				})
			}
		}
	}
})