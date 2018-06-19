<?php  
	session_start();

	//设置宽高
	$width = 80;
	$height = 50;
	$captch_code = ''; //保存验证码

	//生成画布
	$image = imagecreatetruecolor($width,$height);
	imagesavealpha($image,true);//保留背景透明的颜色

	//设置背景颜色
	$background = imagecolorallocatealpha($image,255,255,255,127);

	//左上角开始填充颜色
	imagefill($image,0,0,$background);

	//产生随机数
	for($i=0; $i < 4; $i++) { 
		//设置字体大小
		$fontsize = 100;

		//字体颜色
		$fontcolor = imagecolorallocate($image,rand(0,150),rand(0,150),rand(0,150));

		//要产生的验证码
		$date = "1234567890";

		//产生一位随机验证码
		$fontcontent = substr($date,rand(0,strlen($date)),1);

		$captch_code .= $fontcontent;

		//设置x,y坐标
		$x = ($i*$width/5) + rand($height/6,$height/3);
		$y = rand($height/6,$height/3);

		imagestring($image,$fontsize,$x,$y,$fontcontent,$fontcolor);
	}

	//产生干扰点
	for ($i=0; $i < 200; $i++) { 
		//干扰点颜色
		$pointcolor = imagecolorallocate($image,rand(50,200),rand(50,200),rand(50,200));
		imagesetpixel($image,rand(1,$width-1),rand(1,$width-1),$pointcolor);
	}

	//干扰线
	for ($i=0; $i < 5; $i++) { 
		//干扰线颜色
		$linecolor = imagecolorallocate($image,rand(80,200),rand(80,200),rand(80,200));
		imageline($image,rand(1,$width/3-1),rand(1,$width-1),rand(1,$width-1),rand(1,$width-1),$linecolor);
	}
	$_SESSION['authcode'] = $captch_code;
    header("content-type: image/png");  
    imagepng($image);  
    imagedestroy($image); 
?>