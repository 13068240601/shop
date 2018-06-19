(function(){
	var playList = document.getElementById('playList');
	$.ajax({
		url:'../php/lunbo_index.php',
		success:function(res){
			var html=''
			for (var i = 0; i < res.length; i++) {
html+=
`<div>
	<a href="${res[i].lhref}">
		<img src="${res[i].lsrc}" 
		alt="${res[i].lalt}" title="${res[i].ltitle}">
	</a>
</div>`;
playList.innerHTML=html;
			}
		}
	})
})();