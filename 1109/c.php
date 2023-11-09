<?php
	session_start();
?>
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C</title>
	
</head>
<body>
	<h1>Az 'C' oldalon van.</h1>
	<?php
		if(isset($_SESSION['nev']) && $_SESSION['nev'] != "")
		{
			echo $_SESSION['nev'];
			echo "<p>Mindenféle tartalom.....</p>";
		}else{
			echo "<p>Jelentkezz be!</p>";
		}
	?>
</body>
</html>