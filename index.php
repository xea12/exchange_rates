<?php
error_reporting(1);
error_reporting(E_ALL | E_STRICT);
ini_set('display_errors', 1 );
require_once 'config/connect.php';
require_once 'classes/database.php';
$db = new DatabaseConnection($hostname, $username, $password, $database);
$data = $db->getDataFromTable();
$dataHistory = $db->getHistoryFromTable();
$options = $db->getCurrencyOptions();
$db->closeConnection();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Kursy Walut</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <div class="container">
            <div class="calculator">
                <h1>Kalkulator walut</h1>
                <form action="process.php" method="post">
                    <span class="input">
                        <label for="amount">Kwota:</label>
                        <input type="text" id="amount" name="amount" required>
                    </span>
                    <span class="choose">
                        <label for="from_currency">Z:</label>
                        <select id="from_currency" name="from_currency" required>
                            <option value="">Wybierz walutę</option>
                            <?php echo $options; ?>
                        </select>

                        <label for="to_currency">Na:</label>
                        <select id="to_currency" name="to_currency" required>
                            <option value="">Wybierz walutę</option>
                            <?php echo $options; ?>
                        </select>
                        <input type="submit" value="Przelicz">
                    </span>
                </form>
                <div class="history-table">
                    <p>Ostatnie wymiany</p>
                <table>
                    <tr>
                        <th>Kwota</th>
                        <th>Waluta źródłowa</th>
                        <th>Waluta docelowa</th>
                        <th>Wynik</th>
                    </tr>
                    <?php foreach ($dataHistory as $row): ?>
                        <tr>
                            <td><?= $row['amount']; ?></td>
                            <td><?= $row['from_currency']; ?></td>
                            <td><?= $row['to_currency']; ?></td>
                            <td><?= $row['result']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            </div>
            </div>
            <div class="currency-table">
                <table>
                    <tr>
                        <th>Waluta</th>
                        <th>Kurs w PLN</th>
                    </tr>
                    <?php foreach ($data as $row): ?>
                        <tr>
                            <td><?= $row['code']; ?></td>
                            <td><?= $row['mid']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </body>
</html>