<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<form action="index.php" method = "get">
		<p>Email: </p>
		<input type="text" name="email" value="">
		<br>
		<p>Név: </p>
		<input type="text" name="nev" value="">
		<br>
		<p>Város: </p>
		<input type="text" name="varos" value="">
		<br>
		<input type="hidden" name="hidden" value="1">
		<input type="submit" value="Küld">
	</form>
	<?php
		//Check email
		function check_mail($em){
			$connect = mysqli_connect("localhost","root","","orai0117"); //Kapcsolat felépítése
			mysqli_query($connect, "set names utf8"); //Helyes formátum
			$query = mysqli_query($connect,"SELECT COUNT(email) FROM adatok WHERE email = '$em'"); //Email Check
			$rek = mysqli_fetch_array($query);
			//echo $rek[0]; = db
			if ($rek[0] == 0)
			{
				//INSERT INTO `adatok`(`id`, `email`, `nev`, `varos`) VALUES ()
				echo "Nincs ilyen email";
				mysqli_query($connect, "INSERT INTO adatok VALUES ($em, "."test".",'var')");
				echo mysqli_error($connect);
			}
		}
		if (isset($_GET["hidden"])){ //Submit gomb által
			if (isset($_GET["email"]))
			{
				$email = $_GET["email"];
				$connect = mysqli_connect("localhost","root","","orai0117"); //Kapcsolat felépítése
				mysqli_query($connect, "set names utf8"); //Helyes formátum
				mysqli_query($connect, "INSERT INTO adatok VALUES ('test', 'test','var')");
				echo mysqli_error($connect);
				//check_mail($email);
			}
		}
		
	?>
</body>
</html>