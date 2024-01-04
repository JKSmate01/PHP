<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<?php
		/*szimpla eljárás*/
		function eljaras($szov, $meret, $szin, $hatter)
		{
			echo "<p style='font-size:$meret px; color:$szin; background-color:$hatter;'>$szov</p>";
		}
		eljaras("Test",20,"white","black");
		eljaras("Test2",40,"red","green");
		/*random*/
		$colors = array("green","red","yellow","blue","orange");
		eljaras("Test2",40,"black",$colors[rand(0,count($colors)-1)]);
	?>
	
	<?php
		/* függvény */
		echo "<hr>";
		echo "For-os";
		echo "<br>";
		function lista ($type, $elemek)
		{
			$line = "";
			if ($type == 0)
			{
				$line .="<ol>";
				for ($i = 0; $i < count($elemek); $i++)
				{
					$line .="<li>$elemek[$i]</li> \n";
				}
				$line .="</ol>";
			}else{
				$line .="<ul>";
				for ($i = 0; $i < count($elemek); $i++)
				{
					$line .="<li>$elemek[$i]</li> \n";
				}
				$line .="</ul>";
			}
			return $line;
		}
		$el = array("t","e","s","t");
		echo lista(0,$el);
		echo lista(1,$el); 
		
		echo "<br>";
		echo "<hr>";
		echo "Foreach-es";
		echo "<br>";
		function listaf ($type, $elemek)
		{
			$lines = "";
			if ($type == 0)
			{
				$lines .= "<ol>";
				foreach($elemek as $elem){
					$lines .= "<li>$elem</li> \n";
				}
				$lines .= "</ol>";
			}else{
				$lines .= "<ul>";
				foreach($elemek as $elem){
					$lines .= "<li>$elem</li> \n";
				}
				$lines .= "</ul>";
			}
			return $lines;
		}
		$el = array("t","e","s","t");
		echo(listaf(0,$el));
		echo(listaf(1,$el));
	?>
	
</body>
</html>