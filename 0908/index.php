<?php
     echo "<h1>Operátorok</h1>";
     echo "<h2>Matematikai</h2>";
     function matek (){
        $a = 10;
        $b = 20;
        echo "$a + $b";
        echo "<br>";
        echo $a + $b;
        echo "<br>";
        echo "$a - $b";
        echo "<br>";
        echo $a - $b;
        echo "<br>";
        echo "$a * $b";
        echo "<br>";
        echo $a * $b;
        echo "<br>";
        echo "$a / $b";
        echo "<br>";
        echo $a / $b;
        echo "<br>";
        echo "$a % $b Osztás maradék";
        echo "<br>";
        echo $a % $b;
        echo "<br>";
        echo "2 ** 10";
        echo "<br>";
        echo 2 ** 10;
        echo "<br>";
        $x = 100;
        $x++;
        echo $x;
        echo "<br>";
        $x--;
        echo $x;
        echo "<br>";
        echo "$x++ : ";
        echo $x++;
        echo "<br>";
        echo $x;
        echo "<hr></hr>";
        $x--;
        echo "<br>";
        echo $x;
        echo "<br>";
        echo "++$x : ";
        echo ++$x;
        echo "<br>";
        echo $x;
        $a = 10;
        $b = 10;
        if ($a == $b && $a > 0)
        {
            sleep(1);
            echo "Yessssssssssssssss";
        }else{
            echo "NOOOOOOOOOOOOOOOOO";
        };
        
     };
     matek();
?>
