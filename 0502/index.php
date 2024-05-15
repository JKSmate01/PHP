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
        $products = array('sóska','lábzsír','toroksó','ujjprotézis','libalegelő','lábvíz','műhaj','hajháló','sósavas víz','ürgebőr','hajpótlás','macskapapucs');
        $prices =array(600,400,500,600,750,900,100,1000,1200,550,200,2000);
		$selected_products = array();
    ?>
	<?php
		$szum = 0;

			for($i = 0; $i < count($products); $i++)
			{
				if (isset($_GET["product_$i"]))
				{
					array_push($selected_products,"checked");
					$szum += $prices[$i];
				}else{
					array_push($selected_products,"");
				}
			}
	?>
    <form action="index.php" method="get">
        <?php
            $pos = 0;
            echo "<table>\n";
            /*Ki kell egészíteni*/
			for($i = 0; $i < count($products); $i++)
			{
				echo "<tr> <td><label>".$products[$i]."</label></td><td><input type='text' value='".$prices[$i]."' disabled name='price_".$i."'</td><td><input type='radio' ".$selected_products[$i]." name='product_".$i."'</td></tr>";
			}
            echo "<tr><td colspan=\"3\"><input type=\"submit\" value=\"Mennyibe kerül összesen?\"></td></tr>";
            echo "</table>\n";
        ?>
		<input type="hidden" name="h" value="ok">
		<?php
		if (isset($_GET['h']))
		{
			echo "<label styles='font-weight:bolder;'> Az összár: $szum </label>";
		}
		?>
    </form>
	
</body>
</html>