<!DOCTYPE html>

<html lang="hu">
<head>
    <meta charset="utf-8"/>
    <title></title>
    <style>
         @keyframes example {
          
         }
         p {
          animation-name: example;
          animation-duration: 8s;
          animation-iteration-count: infinite;
         }
    </style>
</head>
<body>
    <?php 
        $tol = 10;
        $ig = 50;
        $ossz = 0;
        $szov = "";
        for ($i = $tol; $i <= $ig; $i++){
            if ($i != $ig){
                $szov.="".$i." + ";
            }else{
                $szov.="".$i." = ";
            }
            $ossz += $i;
        }
        echo "<p>$szov $ossz</p>";
        echo "<br>";
        $a = 50;
        $b = 0;
        if ($a >0 && $b > 0)
        {
            echo $a/$b;
        }else{
            echo "Nem lehet 0-val osztani!!!!";
        }
    ?>
</body>
</html>