<?php
require_once 'config/connect.php';
require_once 'classes/database.php';
$db = new DatabaseConnection($hostname, $username, $password, $database);
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['amount']) && isset($_POST['from_currency']) && isset($_POST['to_currency'])) {
        $amount = $_POST['amount'];
        $fromCurrency = explode('-',$_POST['from_currency']);
        $fromCurrencyValue = $fromCurrency[0];
        $fromCurrencyCode = $fromCurrency[1];
        $toCurrency = explode('-',$_POST['to_currency']);
        $toCurrencyValue = $toCurrency[0];
        $toCurrencyCode = $toCurrency[1];

    
        $convertedAmount = $amount * ($fromCurrencyValue / $toCurrencyValue);

        /* echo "Przeliczona kwota: $convertedAmount $toCurrencyCode "; */
        $db->saveExchangeResult($fromCurrencyCode, $toCurrencyCode, $amount, $convertedAmount);
    } else {
        echo "Brak kursów wymiany dla podanych walut.";
    }
} else {
    echo "Brak danych kursów wymiany w bazie.";
}
$db->closeConnection();

?>

<script type="text/javascript">location.href="http://localhost/nbp/"</script>

