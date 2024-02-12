<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kepek</title>
</head>
<body>
				
	<form action="index2.php" method="GET">
		<p>Képek:
		<?php
				/*foreach ($files as $file) {
					echo "<a href='./images/".basename($file)."'><img src='./images/".basename($file)."'></a> <br>";
				}*/
			$root_dir = $_SERVER['DOCUMENT_ROOT'];
			$files = glob($root_dir.'/0207/images/*.*'); 
			echo "<select name='image'>";
				foreach ($files as $file) {
					echo "<option value='./images/".basename($file)."'>".basename($file)."</option>";
				}
			echo "</select>";
		?>
		</p>
		<input type="submit" value="Mutasd">
	</form>
	<?php
		if (isset($_GET['image'])){
			echo "<a href='".$_GET['image']."'><img src='".$_GET['image']."'></a>";
		}
	?>

</body>
</html>