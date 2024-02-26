<?php
// Kép létrehozása
	$width = 400;
	$height = 100;
	$image = imagecreatetruecolor($width, $height);

	// Szín létrehozása
	$green = imagecolorallocate($image, rand(0,255),rand(0,255),rand(0,255)); // Piros szín
	$red = imagecolorallocate($image, rand(0,255), rand(0,255), rand(0,255)); // Piros szín


	// Szakasz rajzolása (kép,bfx,bfx,jax,jay) (bf:bal felső, ja: jobb alsó)(a bf sarok az origó (0,0))

	imageline($image,0,0,$width-1,$height-1, $red);
	imageline($image,0,$height-1,$width-1,0, $green);
	imageline($image,0,$height-1,0,0, $green);
	imageline($image,$width-1,$height-1,$width-1,0, $green);
	imageline($image,0,0,$width-1,0, $green);
	imageline($image,0,$height-1,$width-1,$height-1, $green);
	imageellipse($image,$width/2,$height/2,50,50,$red);
	imageellipse($image,$width/3,$height/3,50,50,$red);
	imageellipse($image,$width/1.5,$height/1.5,50,50,$red);



	// Kép kimenetele
	header('Content-type: image/png');
	imagepng($image);

	// Kép felszabadítása
	imagedestroy($image);

?>
