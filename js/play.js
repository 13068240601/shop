function play(){
	var play = document.getElementById("play");
	var playList = document.getElementById("playList");
	var myLeft = 0;
	var j = 0;
	function ainmate(offset) {
		// playList.style.left = parseInt(playList.style.left) + offset + 'px';
		if (myLeft < -4200) {
			playList.style.transition = 'all ' + 0 + 's';
		 	myLeft = 0;
		 	j=0;
		}else if(myLeft > 0){
		 	myLeft = -4200;
		}else{
			playList.style.transition = 'all ' + 1 + 's';
		}

		j++;
		if (j==5) {
			j=0;
		}
		myLeft = j * offset;
		playList.style.left = myLeft + 'px';
		focus();
	}
	function playing(){
		ainmate(-1050);
	}
	var img_play = window.setInterval(playing,2000);
	play.onmouseover = function(){
		img_play = clearInterval(img_play);
		img_play = null;
	}
	play.onmouseleave = function(){
		img_play = setInterval(playing,2000);
	}
	var button = document.getElementsByClassName('button');
	for (var i = 0,len=button.length; i < len; i++) {
		button[i].onclick = function(){
			j = this.dataset.index;
			console.log(i);
			playList.style.left = j * (-1050) + 'px';
			focus();
		} 
	}

	function focus() {
		var on = document.getElementsByClassName('button');
		for(var val of on){
			val.className='button'
		}
		//button.ClassName = "button";
		on[j].className = "button on";
	} 
}