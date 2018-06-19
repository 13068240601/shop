(()=>{
	var atv = document.getElementsByClassName('avtivity');
	var html = "";
	$.ajax({
		url:"../php/avtivity.php",
		success:function(res){
			html+=`<div class="avtivity-list">`;
			var result = JSON.parse(res);
			for (var i = 0; i < result.length; i++) {
				html += 
				`<div class="am-u-sm-3">
					<a href="${result[i].atvahref}"><div class="icon-sale">
						<h1 class="avtivityName">${result[i].atvh1}</h1>
					</div></a>
					<div class="activityMain">
						<img src="${result[i].atvsrc}" alt="${result[i].atvalt}" title=${result[i].atvtitle}>
					</div>
					<h3 class="info">${result[i].atvh3}</h3>
				</div>`;
			}	
			html+=`</div>`;
			$(".avtivity").append(html);
		}
	})
})()