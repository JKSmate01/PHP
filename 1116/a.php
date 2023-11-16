
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fibonacci</title>
	<style>
		th{
			background-color: black;
		}
		td{
			border: 2px solid black;
			text-align: center;
			background-color: gray;
		}
		td,p{
			color: white;
		}
		th,p{
			color: white;
		} 		
	</style>
</head>
<body>
	<label>Táblás</label>
	<br>
	<?php
		$tabla = array(0,1);
		for ($i = 0; $i < 28; $i++)
		{
			$tabla[$i+2] = $tabla[$i] + $tabla[$i+1];
		}
		foreach ($tabla as $t)
		{
			echo "$t,";
		}
	?>
	<br>
	<label>3 változós</label>
	<br>
	<?php
		$a = 0;
		$b = 1;
		echo "$a,$b,";
		$c = null;
		for ($i = 0; $i < 28; $i++){
			$c = $a + $b;
			$a = $b;
			$b = $c;
			echo "$c,";
		}
	?>
	<table>
	<tr>
		<th>A</th>
		<th>B</th>
		<th>C</th>
	</tr>
	<?php
		$a = 0;
		$b = 1;
		$c = null;
		for ($i = 0; $i < 28; $i++){
			echo "<tr>";
			echo "<td><p>$a</p></td>";
			echo "<td><p>$b</p></td>";
			$c = $a + $b;
			echo "<td><p>$c</p></td>";
			echo "</tr>";
			$a = $b;
			$b = $c;
			//echo "$c,";
		}
	?>
	</table>
</body>
</html>