<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	<style>
		td{
			border: 1px solid;
		}
	</style>
</head>
<body>
	<?php
		function paragrafsdiffcol($szin1,$szin2,$szov)
		{
			$lines = "";
			for ($i = 0; $i < count($szov); $i++)
			{
				if ($i % 2 == 0)
				{
					$lines .= "<p style='color:$szin1'>$szov[$i]</p>";
				}else{
					$lines .= "<p style='color:$szin2'>$szov[$i]</p>";
				}
			}
			return $lines;
		}
		$szavak = array("Egér", "Macska", "Nyuszi", "Liba","Kacsa");
		echo paragrafsdiffcol("red","blue", $szavak);
		
		echo "<br>";
		echo "<hr>";
		echo "<br>";
		
		function paragrafsdiffcol2($szin1,$szin2,$szov)
		{
			$lines = "";
			$last = $szin2;
			foreach($szov as $sz)
			{
				if ($last == $szin2)
				{
					$lines .= "<p style='color:$szin1'>$sz</p>";
					$last = $szin1;
				}else{
					$lines .= "<p style='color:$szin2'>$sz</p>";
					$last = $szin2;
				}
			}
			return $lines;
		}
		echo paragrafsdiffcol2("red","blue", $szavak);
	?>
	<?php
		function tablenum($rows, $cols){
			$lines = "";
			$lines .= "<table>";
			$num = 1;
			for($i = 0; $i < $rows; $i++)
			{
				$lines .= "<tr>";
				for ($c = 0; $c < $cols; $c++)
				{
					$lines .= "<td>$num</td>";
					$num++;
				}
				$lines .= "</tr>";
			}
			$lines .= "</table>";
			return $lines;
		}
		echo tablenum(10,10);
	?>
</body>
</html>