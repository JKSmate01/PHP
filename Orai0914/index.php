<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8" />
    <title>Orai0914</title>
</head>
<body>
    <?php
        echo "<h1>�rai 09.14.</h1>";
        echo "<br>";
        $a = $b = 100;
        echo $a;
        echo "<br>";
        if ($a == $b)
        {
            echo "Az �rt�k megegyezik. A t�pus lehet hogy nem.";
        }else
        {
            echo "Az �rt�k nem egyezik meg.";
        }
        $a = 100;
        $b = "100";
        echo "<br>";
        if ($a === $b)
        {
            echo "Az �rt�k �s a t�pus megegyezik.";
        }else
        {
            echo "Az �rt�k vagy a t�pus nem egyezik meg.";
        }
        //=== tagad�sa !==
        /*
            Spaceship oper�tor
            $a <=> $b
            -1:$a < $b
            0:$a === $b
            1:$a > $b
        */
        echo "<br>";
        $a = -10;
        $b = 100;
        echo $a <=> $b;
        echo "<br>";
        $a = 100;
        $b = 100;
        echo $a <=> $b;
        echo "<br>";
        $a = 100;
        $b = -10;
        echo $a <=> $b;
        echo "<br>";
        /*
            Rel�ci�s oper�torok
            ==
            !=
            ===
            <>: nem egyenl�
            <: kisebb;
            >: nagyobb;
            <=: kisebb =;
            >=: nagyobb =;
            <=>: -1,0,1;
        */
        /*
            Logikai oper�torok
            &&, and;
            ||, or;
            |, tagad�s;
            xor, kiz�r� vagy;
        */
        echo "<h2>Logikai oper�torok</h2>";
        echo "<br>";
        $a = 100;
        $b = -100;
        if (($a > 0 && $a < 101 ) && ($b < 0 && $b > -101))
        {
            echo "a: ";
            echo $a;
            echo " b: ";
            echo $b;
        }
        //�sel�s
        echo "<br>";
        echo "<h3>�sel�s</h3>";
        echo "<br>";
        $a = 0;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a && $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 1;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a && $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 0;
        $b = 0;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a && $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        //Vagy
        echo "<br>";
        echo "<h3>Vagy</h3>";
        echo "<br>";
        $a = 0;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a || $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 1;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a || $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 0;
        $b = 0;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a || $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        //XOR
        echo "<br>";
        echo "<h3>XOR</h3>";
        echo "<br>";
        $a = 0;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a xor $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 1;
        $b = 1;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a xor $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        echo "<br>";
        $a = 0;
        $b = 0;
        echo "<br>";
        echo "a: ";
        echo $a;
        echo " b: ";
        echo $b;
        echo "<br>";
        if ($a xor $b)
        {
            echo "Igaz";
        }else {
            echo "Hamis";
        }
        /*
            String �sszef�z�: .
            .= : sz�veg v�g�hez add hozz�
        */
        echo "<br>";
        $nev1 = "Kov�cs";
        $nev2 = "J�nos";
        echo "<br>";
        echo $nev1;
        echo "<br>";
        echo $nev2;
        echo "<br>";
        $nev = $nev1." ".$nev2;
        echo $nev;
        echo "<br>";
        $nev .= " new";
        echo $nev;
    ?>
</body>
</html>