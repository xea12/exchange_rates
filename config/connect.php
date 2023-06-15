<?php
error_reporting(1);
error_reporting(E_ALL | E_STRICT);
ini_set('display_errors', 1 );


$hostname = "localhost"; 
$database = "kursy_walut";
$username = "root";
$password = "wiesio0";



$conn = new mysqli($hostname, $username, $password, $database);

$conn->set_charset("utf8mb4");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


?>