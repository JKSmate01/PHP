<?php
	session_start();
	
?>
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B</title>
	<style>
		a {
			font-size: 20px;
		}
	</style>
</head>
<body>
	<h1>Az 'B' oldalon van.</h1>
	<?php
		if(isset($_GET['nev']) && $_GET['nev'] != "")
		{
			echo $_GET['nev'];
			$_SESSION['nev'] = $_GET['nev'];
		}
	?>
	<br>
	<a href="c.php" target="blank">Tovább C-re</a>
</body>
</html>