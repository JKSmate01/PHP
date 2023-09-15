<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8" />
    <title>Orai0915</title>
</head>
<body>
    <?php
        /* http://localhost/orai0915/index.php?nev=Miksa&db=10 */
        $nev = $_GET['nev'];
        $db = $_GET['db'];
        echo $nev;
        echo "<br>";
        echo $db;
        echo "<br>";
        echo "<p>$nev $db</p>";
         /*     (1)                   (2)       (3)    
         for (inicializációs rész, feltétel, léptetés){
            CIKLUSMAG (4)
        }
        (5)
        <-------------------------->
        void Feltetel_check(){
        (1),
        (2),
        if (2) == True:
            (3), (4).
            Feltetel_check();
        else:
            (5);
        }
        */
        echo "<br>";
        echo "<p>Szamozatlan</p>";
        echo "<ul>";
        for($i=0; $i<5; $i++)
        {
            echo "<li>$nev $db</li>";
        }
        echo "</ul>";

        echo "<br>";
        echo "<p>Szamozott</p>";
        echo "<ol>";
        $crs = array('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f');
        for($i=0; $i<5; $i++)
        {
            $color="#";
            
            for ($c = 0; $c<5;$c++)
            {
                $color .= $crs[rand(0,15)];
                echo $color;
            }
            echo "<li><p style='color:$color'>$nev $db</p></li>";
        }
        echo "</ol>";
    ?>
</body>
</html>