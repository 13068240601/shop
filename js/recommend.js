(function(){
	var recommend = document.getElementById('recommend');
	var recinner = recommend.innerHTML;
	$.ajax({
		url:"../php/recommend.php",
		success:function(res){
			var result = JSON.parse(res);
			for(var i=0;i<result.length;i++){
				recinner +=
					`<div class="recomm">
						<a href="${result[i].recahref}">
							<img src="${result[i].recsrc}" alt="${result[i].recalt}" title=${result[i].rectitle}>
						</a>
					</div>`;
			}
		recommend.innerHTML = recinner;
		// $("#recommend").html(recinner);
		}
	})
})()