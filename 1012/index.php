<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	
</head>
<body>
	<form action="index.php" method = "get">
		<p>Van? 
		<input type="checkbox" name="box">
		</p>
		<fieldset>
		<legend>Mennyit?</legend>
			<p>1 <input type="radio" name="c" value="1"></p>
			<p>2 <input type="radio" name="c"value="2"></p>
			<p>3 <input type="radio" name="c"value="3"></p>
		</fieldset>
		<input type="submit">
	</form>
	<?php
		if ( isset($_GET['box']) && isset($_GET['c']) ){
			$a = $_GET['box'];
			$db = $_GET['c'];
			if ($a == "on")
			{
				for($i = 0; $i<$db; $i++){
					echo "Van";
				}
			}
		}else{
				echo "Nincs";
		}
	?>
</body>
</html>