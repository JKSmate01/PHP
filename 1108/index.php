<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	<style>
         @keyframes example {
			0% {color: blue; font-size:20px};
			100% {color: green; font-size:30px};
         }
		 @keyframes examples {
			0% {background-color: black};
			100% {background-color: white};
         }
		  @keyframes exampless {
			0% {background-color: black};
			100% {background-color: white};
         }
         p {
			animation-name: example;
			animation-duration: 2s;
			animation-iteration-count: infinite;
         }
		 body{
			 animation-name: examples;
			animation-duration: 2s;
			animation-iteration-count: infinite;
		 }
		 #gomb{
			 animation-name: exampless;
			animation-duration: 2s;
			animation-iteration-count: infinite;
		 }
    </style>
</head>
<body>
	<form action="index.php" method = "get">
		<select name="varos">
			<?php
				$data = array (
					'Budapest' => 1729040,
					'Debrecen' => 211340,
					'Szeged' => 168048,
					'Miskolc' => 167754,
					'Pécs' => 156049,
					'Győr' => 129527,
					'Nyíregyháza' => 119746,
					'Kecskemét' => 111411,
					'Székesfehérvár' => 100570,
					'Szombathely' => 78884,
					'Érd' => 63662,
					'Szolnok' => 72953,
					'Tatabánya' => 67753,
					'Sopron' => 60548,
					'Kaposvár' => 66245,
					'Veszprém' => 61721,
					'Zalaegerszeg' => 59499,
					'Békéscsaba' => 62050,
					'Eger' => 56569,
					'Dunakeszi' => 40545
					);
				foreach ($data as $varos => $lakos)
				{
					if (isset($_GET['varos'])){
						if ($_GET['varos'] == $varos){
							echo "<option selected>$varos</option>";
						}else{
							echo "<option>$varos</option>";
						}
					}else{
						echo "<option>$varos</option>";
					}
				}
			?>
		</select>
		<?php
			if (isset($_GET['varos']))
			{
				echo "<br>";
				$v = $_GET['varos'];
				foreach ($data as $varos => $lakos)
				{
					if ($v == $varos)
					{
						echo "<p>$varos lakossága = $lakos fő</p>";
						break;
					}
				}
			}
		?>
		<br>
		<input type="submit" value="Elküld" id="gomb">
	</form>
</body>
</html>