<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
		//1
		function interval_to_array ($tol, $ig)
		{
			$nums = array();
			for ($i=$tol; $i <= $ig; $i++)
			{
				array_push($nums,$i);
			}
			return $nums;
		}
		$eredmeny = interval_to_array(50,560);
		foreach ($eredmeny as $er)
		{
			echo "$er, ";
		}
    ?>
	<?php
		//2
		function row_count_in_file ($fname)
		{
			$f = fopen("$fname.txt","r+");
			$num = 0;
			while(!feof($f))
			{
				fgets($f);
				$num++;
			}
			fclose($f);
			return $num;
		}
		echo "<br>";
		echo row_count_in_file("test");
	?>
	<?php
		//3
		function row_count_in_file_with_filter ($fname,$filter)
		{
			$db = 0;
			$f = fopen("$fname.txt","r+");
			while(!feof($f))
			{
				$l = fgets($f);
				$v = strpos($l,$filter);
				if ($v !== false)
				{
					$db++;
				}
			}
			fclose($f);
			return $db;
		}
		$db = row_count_in_file_with_filter("papucs","szegedi");
		echo "<br>";
		echo $db;
	?>
</body>
</html>