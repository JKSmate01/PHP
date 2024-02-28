<?php
// Kép létrehozása
$width = 600;
$height = 600;
$image = imagecreatetruecolor($width, $height);

// Szín létrehozása
	$con = mysqli_connect('localhost','root','','grafika');
	mysqli_select_db($con,'elemek');
	$lek = mysqli_query($con,"select r,g,b,colorname from elemek where type='color'");
	//$szinek = array();
	while($row = mysqli_fetch_array($lek))
	{
			//$row['colorname'] vagy $row['r']
			//${$row['colorname']} = array(, $row['g'], $row['b']);
			${$row['colorname']} = imagecolorallocate($image, $row['r'], $row['g'], $row['b']);
			//array_push($szinek,$row['colorname']);
	}

// Szakasz rajzolása (kép,bfx,bfx,jax,jay) (bf:bal felső, ja: jobb alsó)(a bf sarok az origó (0,0))
	$lek = mysqli_query($con,"select centerx,centery,width,height,colorname from elemek where type='circle'");
	//$szinek = array();
	while($row = mysqli_fetch_array($lek))
	{
			//$row['colorname'] vagy $row['r']
			//${$row['colorname']} = array(, $row['g'], $row['b']);
			imagefilledellipse($image,$row['centerx'],$row['centery'],$row['width'],$row['height'],${$row['colorname']});
			//array_push($szinek,$row['colorname']);
	}
	$lek = mysqli_query($con,"select x1,y1,x2,y2,colorname from elemek where type='rectangle'");
	//$szinek = array();
	while($row = mysqli_fetch_array($lek))
	{
			//$row['colorname'] vagy $row['r']
			//${$row['colorname']} = array(, $row['g'], $row['b']);
			imagefilledrectangle($image,$row['x1'],$row['y1'],$row['x2'],$row['y2'],${$row['colorname']});
			//array_push($szinek,$row['colorname']);
	}
/*

	kitöltött ellipszis: imagefilledellipse($image,középx,középy,szélesség,magasság,szín)
	kitöltött téglalap: imagefilledrectangle($image,x1,y1,x2,y2,szín)
*/



// Kép kimenetele
header('Content-type: image/png');
imagepng($image);

// Kép felszabadítása
imagedestroy($image);
?>
