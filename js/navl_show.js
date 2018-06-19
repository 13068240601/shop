// (function(){
	"use static";
	var navl_list = null;
	var detail_list = null;
	// var a;
	function aa(){
		return new Promise(function(open){
			var nav_left = document.getElementById('nav_left');
			$.ajax({
				url:'../php/navl_kind.php',
				success:function(res){
					// console.log(res)
					var html = "";
					html +=`<ul>`;
					for(var n = 0; n < res.length;n++){
						html += 
							`<li class="qc" data-key="${res[n].k_p}" data-index="${res[n].kid}">
							<a href="${res[n].k_ahref}" class="title">
							<i class="before"></i>
							<p>${res[n].k_p}</p>
							<i class="after"></i>
							</a><div class="detail-list" id="detail-list"></div></li>`;
					}
					html+=`</ul>`;
					nav_left.innerHTML = html;
					open();
					
					// a = 123;
				}	

			})

		})
		// console.log(a);
	}
	aa().then(function(){
		return new Promise(function(open){
			navl_list = document.getElementsByClassName('qc');
			detail_list = document.getElementsByClassName('detail-list');
			for (var i = 0; i < navl_list.length; i++) {
				navl_list[i].onmouseenter= function() {
					j = this.dataset.index;
					key = this.dataset.key;
					$.ajax({
						data:{kid:j},
						url:'../php/navl_list.php',
						success:function(res){
							// console.log(res)
							var html2 = "";
							html2 +=`<div class="detail-merchant">`;
							for (var i = 0; i < res.length; i++) {
								var merchant = res[i][3];
								html2 += `<a href="./products.html?title=${key} ${merchant}" class="list">${merchant}</a>`;
							}
							html2 += `</div>`;
							$(".detail-list").html(html2);
							// detail_list.textContent = "12345";
						}
					})	
				}
			}
		})	
	})
// })()