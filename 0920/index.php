<!DOCTYPE html>

<html lang="hu">
<head>
    <meta charset="utf-8"/>
    <style>
        table, td{
            border: 2px solid black;
            
        }
        td:hover{
            <?php
                $colorc = "rgb(".rand(0,255).", ".rand(0,255).", ".rand(0,255).")";
                echo "background-color:$colorc;";
            ?>
        }
        
    </style>
    <title></title>
</head>
<body>
    <?php
        $rows = $_GET['row'];
        $cols = $_GET['col'];
        $caption = $_GET['caption'];
        $data =  $_GET['data'];
        echo "<table>";
        echo "<caption>$caption</caption>";
        for ($s = 0; $s < $rows; $s++){
            echo "<tr>";
            for ($c = 0; $c < $cols; $c++){
                $color = "rgb(".rand(0,255).", ".rand(0,255).", ".rand(0,255).")";
                echo "<td style='background-color:$color;'>$data</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    ?>
</body>
</html>