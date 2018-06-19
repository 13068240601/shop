(()=>{
	var i = 0;
	var result = 0;
	function asd(){
		return new Promise(function(open){
			$.ajax({
				url:'../php/count_notice.php',
				success:function(res){
					result = res;
					open();
					// console.log(`res:${res}`)
				}
			})
		})
	}	
	asd().then(function(){
		var size =  9;
		var notice = 0;
		renovate.onclick = function(){
			notice = i * size;
			if (notice<result) {
				i++;
			}else{
				i=0;
			}
			// console.log(notice)
			// console.log(`i:${i}`)
			$.ajax({
				data:{notice:notice,size:size},
				url:'../php/notice.php',
				success:function(result){
					var notice2 = JSON.parse(result);
					// console.log(notice2)
					for (var j = 0; j < notice2.length; j++) {
						$(`<a href="${notice2[j][1]}"><p>${notice2[j][2]}</p></a>`)
					.appendTo($("#notice"));
					}
				}
			})
		}
		
	})	
})()