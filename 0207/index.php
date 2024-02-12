<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kepek</title>
	<style>
		table,tr, td{
			border: solid 2px black;
		}
	</style>
</head>
<body>
	<?php
		$root_dir = $_SERVER['DOCUMENT_ROOT'];
		echo "Szerver dokumentumgyökér: " . $root_dir;
		echo "<br>";
		echo "<p>Globális elérési utak:</p>";
		echo "<br>";
		$files = glob($root_dir.'/0207/images/*.*'); 
		foreach ($files as $file) {
			echo $file . '<br>';
		}
		echo "<br>";
		echo "<p>Fájlok:</p>";
		echo "<br>";
		//file nevének kiszedése (eltávolítja az elérési utat):
		foreach ($files as $file) {
			echo basename($file) . '<br>';
		}
		echo "<br>";
		echo "<p>Képek:</p>";
		echo "<br>";
		$num = 0;
		$images = array();
		foreach ($files as $file) {
			echo "<a href='./images/".basename($file)."'><img src='./images/".basename($file)."'></a> <br>";
			array_push($images, "./images/".basename($file)."");
			$num++;
		}
		$max_col = 4;
		$row_num = round($num/$max_col);
		echo $row_num;
		echo "<table>";
		for ($r = 0; $r < $row_num; $r++){
			echo "<tr>";
			for($i = $r*$max_col; $i < $r*$max_col+4; $i++)
			{
				if ($i <= $num-1){
					echo "<td><a href='$images[$i]'><center><img src='$images[$i]'></center></a></td>";
				}
			}
			echo "</tr>";
		}
		echo "</table>";
	?>
</body>
</html>