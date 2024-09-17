<?php
    require_once('./class.environment.php');
    $__DotEnvironment = new DotEnvironment(realpath('/home/deploy/.env'));
    
    $servername = $_ENV['MYSQL_HOST'];
    $username = $_ENV['MYSQL_USER'];
    $password = $_ENV['MYSQL_PASSWORD'];
    $dbname = $_ENV['MYSQL_DATABASE'];
    $dbport = $_ENV['MYSQL_PORT'];
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname, $dbport);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
