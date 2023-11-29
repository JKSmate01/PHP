
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Szinek</title>
</head>
<body>
	<form action="index.php" method = "get">
			<?php
				if (isset($_GET['color'])){
					$color = $_GET['color'];
					echo "<style>body{background-color: $color}</style>";
				}
			?>
			<?php
				function createColorList($actcolor)
				{
					$colors = $actcolor;
					$code = "<select name='color'>";
					for ($i = 0; $i < count($colors); $i++)
					{
						if (isset($_GET['color']) && $colors[$i] == $_GET['color']){
							$code.="<option selected>$colors[$i]</option>";
						}else{
							$code.="<option>$colors[$i]</option>";
						}
					}
					$code.= "</select>";
					return $code;
				}
				$c = array("red","green","blue","white","black","brown","pink","yellow","cyan","gray");
				echo createColorList($c);
			?>
			<input type="submit" value="Változtass színt">
			
	</form>
</body>
</html>