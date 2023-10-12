<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
	
</head>
<body>
	<form action="index2.php" method = "get">
		<p>Lakott? 
		<input type="checkbox" name="box">
		</p>
		<fieldset>
			<legend>Városok</legend>
			<?php
				$varosok = array('Szeged', 'Dóc', 'Makkosháza','Tószeg');
				foreach ($varosok as $varos)
				{
					echo "<label>".$varos."</label>";
					echo "<input type='radio' name='varos' value='".$varos."'>";
					echo "<br>";
				}
			?>
		</fieldset>
		<select name="vaross">
			<?php
				$varosok = array('Szeged', 'Dóc', 'Makkosháza','Tószeg');
				foreach ($varosok as $varos)
				{
					echo "<option>".$varos."</option>";
				}
			?>
		</select>
		<input type="submit">
	</form>
	<?php
		if (isset($_GET['box']) && isset($_GET['varos']))
		{
			$b = $_GET['box'];
			$v = $_GET['varos'];
			if ($b == "on"){
				echo "Választott város: ".$v;
			}
			echo "<br>";
			if (isset($_GET['vaross']))
			{
				echo "Választott dropdown város: ".$_GET['vaross'];
			}
		}
	?>
</body>
</html>