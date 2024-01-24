<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<?php
		$lines = file("./szov.txt");
		foreach($lines as $l)
		{
			echo "<p>$l</p>";
		}
		$newlines = array("test\n", "tt\n");
		file_put_contents("./out.txt",$newlines,FILE_APPEND | LOCK_EX);
	?>
</body>
</html>