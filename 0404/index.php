<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<?php
			if (isset($_GET['hidden']))
			{
				if (isset($_GET['text']) && isset($_GET['char']))
				{
					$text = $_GET['text'];
					$char = $_GET['char'];
				}
			}else{
				$text = "";
				$char = "";
			}
	?>
	<form action="index.php" method = "get">
		<p>Text: </p>
			<input type="text" name="text" value="<?php echo $text; ?>">
		<br>
		<p>Char: </p>
			<input type="text" name="char" value="<?php echo $char; ?>">
		<br>
		<input type="hidden" name="hidden" value="1">
		<input type="submit" value="Küld">
	</form>
	
	<?php
		function Szam($szov, $char)
		{
			$db = 0;
			if (strpos($szov,$char) !== false)
			{
				for ($i = 0; $i < strlen($szov); $i++)
				{
					if ($szov[$i] == $char)
					{
						$db++;
					}
				}
			}
			return $db;
		}
		function odavissza($szov)
		{
			echo $szov;
			echo "<br>";
			$num = intval(strlen($szov) / 2);
			$first = "";
			$sec = "";
			for ($i = 0; $i < $num; $i++)
			{
				$first .= $szov[$i];
			}
			for ($i = ($num+1); $i < strlen($szov); $i++)
			{
				$sec .= $szov[$i];
			}
			if ($first == strrev($sec))
			{
				echo "Tükör szó!";
			}else
			{
				echo "Nope!";
			}
			//echo strrev($first);
		}
		function Remover($szov,$char)
		{
			//$sz = array();
			$temp_text = "";
			for ($i = 0; $i < strlen($szov); $i++)
			{
				if ($szov[$i] != $char){
					//array_push($sz,$szov[$i]);
					$temp_text .= $szov[$i];
				}
			}
			return $temp_text;
		}
	?>
	<?php
		if (($text != "") && ($char != "")){
			echo Szam($text,$char);
			echo "<br>";
			echo Remover($text, $char);
			echo "<br>";
		}
		odavissza("kajak");
		echo "<br>";
		odavissza("kocsi");
		echo "<br>";
		odavissza("apa");
		
	?>
</body>
</html>