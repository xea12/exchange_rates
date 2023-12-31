<?php

require_once '../config/connect.php';


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$delSchedule = "TRUNCATE TABLE exchange_rates";
mysqli_query($conn, $delSchedule);

$urls = array(
    'urlA' => 'http://api.nbp.pl/api/exchangerates/tables/A/',
    'urlB' => 'http://api.nbp.pl/api/exchangerates/tables/B/'
);

$curl = curl_init();
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_HTTPGET, true);

$allData = array(); 

foreach ($urls as $key => $url) {
    curl_setopt($curl, CURLOPT_URL, $url);
    $response = curl_exec($curl);
    $err = curl_error($curl);
    if ($err) {
        echo "cURL Error #" . $key . ": " . $err;
    } else {
        $data = json_decode($response, true);
        $allData[$key] = $data; 
    }
}

curl_close($curl);

echo '<pre>';
var_dump($allData); 
echo '</pre>';

$query = "INSERT INTO exchange_rates (effectiveDate, currency, code, mid) VALUES ";

foreach ($allData as $data) { 
    foreach ($data[0]['rates'] as $rate) {
        $effectiveDate = $conn->real_escape_string($data[0]['effectiveDate']);
        $currency = $conn->real_escape_string($rate['currency']);
        $code = $conn->real_escape_string($rate['code']);
        $mid = $rate['mid'];

        $query .= "('$effectiveDate', '$currency', '$code', $mid),";
    }
}

$query = rtrim($query, ',');

if ($conn->query($query)) {
    echo "Dane zostały zapisane w bazie danych.";
} else {
    echo "Błąd zapisu danych: " . $conn->error;
}



$conn->close(); 
header ('Location: /index.php')
?>
