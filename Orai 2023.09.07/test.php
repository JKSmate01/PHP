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
        echo "<p>Test</p>";
        for ($i = 1; $i < 10; $i++){
            echo "Test $i";
        };
        echo "<br>";
        echo "Test vége $i";
    ?>
    <form action="test.php" method="POST">
        <button type="submit">Test</button>
    </form>
</body>
</html>