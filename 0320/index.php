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
		$file = fopen("adatok.dat","r+");
		$data = [];
		$volt = [];
		while(!feof($file))
		{
			array_push($data,trim(fgets($file)));
		}
		foreach ($data as $d )
		{
			if (!isset($volt[$d]))
			{
				$num = 0;
				foreach ($data as $d2 )
				{
					if ($d2 == $d)
					{
						$num++;
					}
				}
				$volt[$d] = $num;
			}
		}
		ksort($volt); //Rendezés abc szerint (kulcs alapon)
		foreach($volt as $v => $d)
		{
			echo $v.": ".$d."<br>";
		}
	?>
</body>
</html>