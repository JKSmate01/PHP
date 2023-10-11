<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	
</head>
<body>
	<form action="index.php" method = "get">
		<table>
		<tr>
			<th><label>Egyik szám</label></th>
			<th><label>Művelet</label></th>
			<th><label>Másik szám</label></th>
		</tr>
		<tr>
			<td><input type="text" name="elso"></td>
			<td><input type="text" name="muvelet"></td>
			<td><input type="text" name="masodik"></td>
		</tr>
		<tr>
			<td><center><input type="submit" value="Számít"></center></td>
		</tr>
		</table>
	</form>
	<?php
		if (isset($_GET['elso']) && isset($_GET['masodik']) && isset($_GET['muvelet'])){
			$a = $_GET['elso'];
			$b = $_GET['masodik'];
			$m = $_GET['muvelet'];
			if ($a == null || $b == null)
			{
				echo "Írj értéket!";
			}else{
				if (is_numeric($a) && is_numeric($b))
				{
					echo $a, $m, $b, " = ";
					switch ($m)
					{
						case "+":
							echo $a + $b;
							break;
						case "-":
							echo $a - $b;
							break;
						case "*":
							echo $a * $b;
							break;
						case "/":
							echo $a / $b;
							break;
					}
					
				}
			}
		}
	?>
</body>
</html>