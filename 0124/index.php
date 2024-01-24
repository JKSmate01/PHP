<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
	<?php
		//Regular expression
		// "." - Bármilyen karakter
		// "*" - char[n-1] >= 0
		// "+" - char[n-1] >= 1
		// "?" - char[n] = 0 | 1
		// "^" - szöv kezdete
		// "$" - szöv vége
		// "{n,m}" - char[n-1] min(n) de max(m)
		// "\d" - számjegy
		// "[abc]" - char[n] = a | b | c
		// "[a-z]" - összes betű
		$minta = "/.*@.*/";
		echo "<p>Feltétel: $minta<p>";
		$szov = "test@gmail.com";
		echo "<p>$szov<p>";
		if (preg_match($minta,$szov))
		{
			echo "Ez egy email!";
		}else{
			echo "Nem email!";
		}
		echo "<br>";
		$szov = "testgmail.com";
		echo "<p>$szov<p>";
		if (preg_match($minta,$szov))
		{
			echo "Ez egy email!";
		}else{
			echo "Nem email!";
		}
		
		$minta = "/.*@gmail.com/";
		echo "<p>Feltétel: $minta<p>";
		$szov = "test@gmail.com";
		echo "<p>$szov<p>";
		if (preg_match($minta,$szov))
		{
			echo "Ez egy Gmail!";
		}else{
			echo "Nem Gmail!";
		}
		echo "<br>";
		$szov = "test@freemail.com";
		echo "<p>$szov<p>";
		if (preg_match($minta,$szov))
		{
			echo "Ez egy Gmail!";
		}else{
			echo "Nem Gmail!";
		}
		
		echo "<br>";
		$feltetel = "/.*a{6,6}.*/";
		
		$szov = "Józsi aaaaaa Pista";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "van benne 6db 'a' ";
		}
		
		
		
		
		$feltetel = "/^x{10,10}$/";
		
		$szov = "xxxxxxxxxx";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "van benne 10db 'x' és x-el kezdődik";
		}
		
		$feltetel = "/^x{10,10}$/";
		
		$szov = "hello xxxxxxxxxx test";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "van benne 10db 'x' ";
		}else{
			echo "nem x-el kezdődik";
		}
		
		
		
		$feltetel = "/^\d+$/";
		
		$szov = "120 kg";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "számmal kezdődik!";
		}else {
			echo "nem számmal kezdődik!";
		}
		
		$szov = "hello 120";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "számmal kezdődik!";
		}else {
			echo "nem számmal kezdődik!";
		}
		
		$feltetel = "/^[a | b]/";
		$szov = "alma";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "(a | b) kezdődik!";
		}else {
			echo "nem (a | b) kezdődik!";
		}
		
		$szov = "b";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "(a | b) kezdődik!";
		}else {
			echo "nem (a | b) kezdődik!";
		}
		
		
		
		$feltetel = "/^[^ab]/";
		$szov = "alma";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "nem (a | b) kezdődik!";
		}else {
			echo "(a | b) kezdődik!";
		}
		
		$szov = "kocsi";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "nem (a | b) kezdődik!";
		}else {
			echo "(a | b) kezdődik!";
		}
		
		
		
		$feltetel = "/^[\d+\.\d | \d+]/";
		$szov = "20";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "szám";
		}else {
			echo "nem szám";
		}
		
		$szov = "20.22";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "szám";
		}else {
			echo "nem szám";
		}
		
		$szov = "szam";
		echo "<p>'$szov'</p>";
		if (preg_match($feltetel, $szov))
		{
			echo "szám";
		}else {
			echo "nem szám";
		}
	?>
</body>
</html>