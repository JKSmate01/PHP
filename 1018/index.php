<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	<style>
		.error {
			color:red;
		}
	</style>
</head>
<body>
	<form action="index.php" method = "get">
		<label>E-mail</label>
		<input type="text" name="email">
		<br>
		<label>Jelszó</label>
		<input type="password" name="pswd1">
		<br>
		<label>Jelszó ismét</label>
		<input type="password" name="pswd2">
		<br>
		<input type="submit">
	</form>
	<?php 
		if (isset($_GET['email']) && isset($_GET['pswd1']) && isset($_GET['pswd2']))
		{
			if (strlen($_GET['email']) > 0){
				$e = $_GET['email'];
				$p1 = $_GET['pswd1'];
				$p2 = $_GET['pswd2'];
				$van = false;
				//@ Check
				if (!strripos($e,"@"))
				{
					echo "<label class='error'>Nincs @ az e-mail címben!</label>";
				}else{
					//Pass check
					if ($p1 != $p2)
					{
						echo "<label class='error'>Jelszavak nem egyeznek!</label>";
					}else
					{
						echo "Regisztrálva:";
						echo "<br>";
						echo "E-mail: ".$e;
						echo "<br>";
						echo "Jelszó: ".$p1;
					}
				}
			}else
			{
				echo "<label class='error'>Töltse ki!</label>";
			}
		}
	?>
</body>
</html>