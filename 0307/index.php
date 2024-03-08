<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<?php
		if (isset($_GET['hidden']) && isset($_GET['value'])){
			$ertek = $_GET['value'];
		}else{
			$ertek = "";
		}
	?>
	<form action="index.php" method = "get">
		<p>Érték: </p>
		<input type="text" name="value" value="<?php echo $ertek; ?>">
		<br> 
		<input type="hidden" name="hidden" value="1">
		<input type="submit" value="Katt">
	</form>
	<?php
		if (isset($_GET['hidden']) && isset($_GET['value'])){
			$ertek = $_GET['value'];
			
			$file = fopen("out.txt","r+");
			$lines = array();
			while(!feof($file))
			{
				array_push($lines,fgets($file));
			}
			$van = False;
			if ($ertek != ""){
			foreach($lines as $line){
				if ($line == $ertek."\n")
				{
					$van = True;
					break;
				}
			}
			if (!$van){
				fwrite($file,$ertek."\n");
				array_push($lines,$ertek."\n");
			}else{
				echo "Már van ilyen!<br>";
			}
			}
			fclose($file);
			$num = 1;
			foreach($lines as $line){
				echo "$num . ".$line."<br>";
				$num++;
			}
		}
	?>
</body>
</html>