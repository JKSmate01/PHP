<?php
	session_start();
?>
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>A</title>
</head>
<body>
	<h1>Az 'A' oldalon van.</h1>
	<form action="b.php" method="get">
		<label>Név</label>
		<input type="text" name="nev">
		<input type="submit">
	</form>
	<?php
		if(isset($_SESSION['nev']))
		{
			echo $_SESSION['nev'];
		}
	?>
</body>
</html>