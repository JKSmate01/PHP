<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	<style>
		.oszton{
			color: lightgreen;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<h1>Hallgatói névsor</h1>
	<?php
		$connect = mysqli_connect("localhost","root","","orai"); //Kapcsolat felépítése
		mysqli_query($connect, "set names utf8"); //Helyes formátum
		$query = mysqli_query($connect,"SELECT nev, osztondijas FROM hallgato ORDER BY nev"); //Nevek és ösztöndíjas mezők lekérdezése abc sorrendben
		while ($rek = mysqli_fetch_array($query))
		{
			$nev = $rek['nev'];
			$osz = $rek['osztondijas'];
			if ($osz == 0){
				echo "<p>$nev</p>";
			}else{
				echo "<p>$nev, aki <span class='oszton'>ösztöndíjas</span></p>";
			}
		}
	?>
</body>
</html>