<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	
</head>
<body>
	<?php
		$szamok = $_GET['szamok'];
		$sz = explode(",",$szamok);
		$num = array_sum($sz);
		echo "<p>".$num."</p>";
	?>
</body>
</html>