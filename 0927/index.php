<!DOCTYPE html>

<html lang="hu">
<head>
    <meta charset="utf-8"/>
    <title></title>
	<style>
    </style>
</head>
<body>
    <?php 
		$numbers = array(5,6,7,8,9,45,34,22,11,-12);
		foreach($numbers as $number)
		{
			echo $number;
		}
		echo "<br>";
		sort($numbers);
		foreach($numbers as $number)
		{
			echo $number;
		}
		echo "<br>";
		rsort($numbers);
		foreach($numbers as $number)
		{
			echo $number;
		}
		$d = "miska,jancsi";
		echo "<br>";
		$nevek = explode(",",$d);
		foreach($nevek as $n)
		{
			echo $n;
			echo " ";
		}
		echo "<br>";
		$szamok = "5 15 80 50 15 3";
		$sz = explode(" ", $szamok);
		$num = 0;
		foreach($sz as $n)
		{
			$num += $n;
		}
		echo "<p>".$num."</p>";
		echo "<br>";
		//http://localhost/0927/index.php?szamsor=1,2,3,4,5
		$numa = array_sum($sz);
		echo "<p>".$numa."</p>";
		echo "<br>";
		$szamok_g = $_GET['szamsor'];
		$szg = explode(",",$szamok_g);
		$sznum = array_sum($szg);
		echo $sznum;
    ?>
</body>
</html>