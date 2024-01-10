
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JKS 0110D</title>
</head>
<body>
	<?php
		// 1.
		function minagyobb ($szam1, $szam2)
		{
			if ($szam1 >= $szam2)
			{
				return 1;
			}else{
				return 2;
			}
		}
		echo "<p> ".minagyobb(2,1)." </p>\n";
		echo "<p> ".minagyobb(3,10)." </p>\n";
		
		//2.
		function szinestext ($szov, $szin)
		{
			echo "<p style='color:$szin'>$szov</p>\n";
		}
		
		szinestext("Teszt szöveg!", "red");
		szinestext("Ez egy másik teszt szöveg!", "green");
		
		//3.
		function createselect (...$tartalom)
		{
			echo "<select>\n";
			foreach ($tartalom as $t)
			{
				echo "<option> $t </option> \n";
			}
			echo "</select>\n";
		}
		
		createselect("elem1", "kocsi", "labda", "alma", "JKS");
	?>
</body>
</html>