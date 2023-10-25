<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<form action="index.php" method = "get">
		<label>Város</label>
		<select name="varos">
			<?php
				$varosok = array("Szeged","Budapest","Pécs","Győr","Debrecen","Algyő","Bécs","London");
				foreach ($varosok as $var)
				{
					echo "<option>$var</option>";
				}
			?>
		</select>
		<?php
			if (isset($_GET['varos']) != ""){
				$varos = $_GET['varos'];
				$szall_varosok = array(
					"Szeged" => 1000,
					"Algyő" => 2000
				);
				echo "<br>";
				echo "<label>Szállítási díj </label>";
				$van = false;
				foreach ($szall_varosok as $a => $b)
				{
					if ($varos == $a)
					{
						echo "<input type='text' name='szalldij' value='$b'>";
						echo "<br>";
						$van = true;
					}
				}
				if (!$van){
					echo "<input type='text' name='szalldij' value='3000'>";
					echo "<br>";
				}
			}else{
				echo "<br>";
				echo"Kérem válasszon egy várost a szállítási díj meghatározásához.";
				echo "<br>";
			}
		?>
		<input type="submit" value="Elküld">
	</form>
</body>
</html>