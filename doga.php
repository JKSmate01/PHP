<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doga</title>
</head>
<body>
	<?php //Az űrlap őrizze meg az elküldés előtti értékeket.
		if (isset($_GET['h'])) //Ha a 'h' rejtett változó létezik, akkor a vásárló már meg nyomta az elküld gombot.
		{
			if (isset($_GET['mennyiseg']))//Ha a 'mennyiseg' változó létezik, akkor egy $menny változóba rakjuk az értékét.
			{
				$menny = $_GET['mennyiseg'];
			}else{
				$menny = 0;
			}
			if (isset($_GET['enged']))//Ha az 'enged' (vagyis checkbox) változó létezik, akkor egy $enged változónak igaz értéket adunk.
			{
				$enged = True;
				if (isset($_GET['enged_sz'])) //Ha az 'enged_sz' (vagyis a százalékérték) változó létezik, akkor egy $enged_sz változóba rakjuk az értékét.
				{
					$enged_sz = $_GET['enged_sz'];
				}else{
					$enged_sz = 0;
				}
			}else{
				$enged = False;
				$enged_sz = 0;
			}
		}else{
			$menny = 0;
			$enged = False;
			$enged_sz = 0;
		}
	?>
	<form action="doga.php" method="GET">
		<?php //Legördülő menü és egyéb inputok
			$termekek = array("kakaó", "csokoládé","tej","liszt","tojás"); //Felvesszük az 5 terméket
			$ar = 1000; //Meg adjuk az árat
			
			//A tömb alapján a php generáljon le egy select elemet ahol kiválaszthatjuk, hogy mit veszünk.
			echo "<select name='termek'>";
			foreach ($termekek as $termek)
			{
				if (isset($_GET['termek'])){ //Le ellenőrizzük, hogy volt-e már az oldalon és választott-e már terméket.
					if ($_GET['termek'] == $termek){ //Ha választott terméket és a termék neve egyezik $termek változóval, akkor adunk neki egy "selected" értéket.
						echo "<option selected>$termek</option>";
					}else{ //Ha választott terméket és a termék neve nem egyezik $termek változóval, akkor simán beleírjuk a $termek változót.
						echo "<option>$termek</option>";
					}
				}else{ //Nem választott terméket, simán beleírjuk a $termek változót.
					echo "<option>$termek</option>";
				}
			}
			echo "</select>";
			
			//Egy beviteli mezőben jelenjen meg a termék ára ami a változóban van. (readonly nem kötelező csak azért raktam bele, mert így a felhasználó nem tudja megváltoztatni az értékét).
			echo "<p>Ár: <input type='text' value='$ar' readonly></p>";
		?>
		<p>Mennyiség: <input type="text" name="mennyiseg" value="<?php echo $menny; //Megadjuk neki a fönt definiált $menny változó értékét.?>"></p>
		<?php //Engedmény checkbox
			if ($enged){ //Ha az $enged változó igaz, akkor a checkbox-nak adunk egy "checked" értéket.
				echo "<p>Akarunk árengedményt: <input type='checkbox' name='enged' checked></p>";
			}else{
				echo "<p>Akarunk árengedményt: <input type='checkbox' name='enged'></p>";
			}
		?>
		<p>Árengedmény(x%): <input type="text" name="enged_sz" value="<?php echo $enged_sz; //Megadjuk neki a fönt definiált $enged_sz változó értékét.?>"></p>
		<input type="hidden" name="h">
		<input type="submit" value="Kalkulál">
	</form>
	<?php //Kiszámítás
		if (isset($_GET['h'])) //Ha a 'h' rejtett változó létezik, akkor a vásárló már meg nyomta az elküld gombot.
		{
			if (isset($_GET['termek']) && isset($_GET['mennyiseg'])) //Ha a 'termek' és 'mennyiseg' változó létezik
			{
				if (isset($_GET['enged'])) //Akar engedményt (checkbox bevan kapcsolva).
				{
					if (isset($_GET['enged_sz']))
					{
						$ossz = $ar * $_GET['mennyiseg']; // teljes ár = termék ára * mennyiseg
						$ossz = $ossz - ($ossz * ($_GET['enged_sz']/100)); // teljes ár = teljes ár - (teljes ár * engedmény(százalékban) / 100)
						echo "<p>Fizetendő összeg: <input type='text' value='$ossz' readonly></p>";
					}
				}else{ //Nem akar engedményt.
					$ossz = $ar *  $_GET['mennyiseg']; // teljes ár = termék ára * mennyiseg
					echo "<p>Fizetendő összeg: <input type='text' value='$ossz' readonly></p>";
				}
			}
		}
	?>
</body>
</html>