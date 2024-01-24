<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<form action="index.php" method = "get">
		<p>Város: </p>
		<input type="text" name="varos" value="">
		<br>
		<input type="submit" value="Küld">
	</form>
	<?php
		if (isset($_GET['varos']))
		{
			$v = $_GET['varos'];
			file_put_contents("./varosok.txt","$v \n",FILE_APPEND | LOCK_EX);
		}
	?>
</body>
</html>