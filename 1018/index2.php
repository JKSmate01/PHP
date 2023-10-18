<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	<style>
		.error {
			color:red;
		}
	</style>
</head>
<body>
	<h1>Asszociatív tömb</h1>
	<?php 
		
		function test(){
			$adatok = array(
			"Pista"=>5000,
			"Sanyi"=>400,
			"Olga"=>8000
			);
			echo $adatok["Sanyi"]."<br>";
			echo $adatok["Pista"]."<br>";
			echo $adatok["Olga"]."<br>";
			
			foreach($adatok as $a => $e)
			{
				echo "<p> $a - $e </p>";
			}
		}
		test();
		
		function valami($duma,$db,$htmlelem)//formális paraméterek
		{
			for($i = 0; $i < $db; $i++)
			{
				echo "<$htmlelem>$duma</$htmlelem>";
				
			}
		}
		echo "<ol>";
		valami("csiga",15,"li");//aktuális paraméterek
		echo "</ol>";
		
		function osszead($a,$b)
		{
			return $a+$b;
		}
		echo osszead(1,2);
	?>
</body>
</html>