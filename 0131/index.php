<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<form action="index.php" method = "get">
		<p>Távolság <input type="number" name="tav" placeholder="x km"></p>
		<p>Sebesség <input type="number" name="seb"  placeholder="x km/h"></p>
		<p>Idő <input type="number" name="ido"  placeholder="x h"></p> 
		<input type="hidden" name="volt" value="1">
		<input type="submit" value="Számol">
	</form>
	<?php
		if (isset($_GET['volt']))
		{
			$data = array(0,0,0);
			$erteks = array("tav","seb","ido");
			for($i = 0; $i < 3; $i++)
			{
				if(isset($_GET[$erteks[$i]]))
				{
					$data[$i] = $_GET[$erteks[$i]];
				}
			}
			$missing = array();
			for ($i = 0; $i < 3; $i++)
			{
				if ($data[$i] == 0)
				{
					array_push($missing,$i);
				}
			}
			if (count($missing) > 0 && count($missing) < 2)
			{
				//v = s/t
				//1 = 0/2
				if ($missing[0] == 1)
				{
					echo "Sebesség= ".($data[0] / $data[2])." km/h";
				}else if ($missing[0] == 0)
				{
					echo "Távolság= ".($data[1] * $data[2])." km";
				}else if ($missing[0] == 2) {
					echo "Idő= ".($data[0] / $data[1])." h";
				}
			}else{
				echo "Legalább és maximum két értéket lehet megadni!";
			}
		}
	?>
</body>
</html>