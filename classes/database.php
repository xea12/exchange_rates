<?php

class DatabaseConnection {
    private $servername;
    private $username;
    private $password;
    private $dbname;
    private $conn;

    public function __construct($servername, $username, $password, $dbname)
    {
        $this->servername = $servername;
        $this->username = $username;
        $this->password = $password;
        $this->dbname = $dbname;


        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);

        if ($this->conn->connect_error) {
            die("Połączenie nieudane: " . $this->conn->connect_error);
        }
    }

    public function getDataFromTable()
    {
        $sql = "SELECT code, mid FROM exchange_rates;";
        $result = $this->conn->query($sql);
        $data = array();
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
        }

        return $data;
    }

    public function getHistoryFromTable()
    {
        $sql = "SELECT from_currency, to_currency, amount, result FROM exchange_result ORDER by id DESC";
        $result = $this->conn->query($sql);
        $data = array();
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
        }

        return $data;
    }

    public function getCurrencyOptions()
    {
        $sql = "SELECT code, currency, mid FROM exchange_rates";
        $result = $this->conn->query($sql);
        $options = '';
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $code = $row['code'];
                $mid = $row['mid'];
                $currency = $row['currency'];
                $options .= "<option value='$mid-$code'>$currency ($code)</option>";
                
            }
        }

        return $options;
    }

    public function saveExchangeResult($fromCurrency, $toCurrency, $amount, $result)
    {
        $sql = "INSERT INTO exchange_result (from_currency, to_currency, amount, result) 
                VALUES ('$fromCurrency', '$toCurrency', '$amount', '$result')";

        if ($this->conn->query($sql) === TRUE) {
            echo "Wynik wymiany został zapisany w bazie danych.";
        } else {
            echo "Wystąpił błąd podczas zapisywania wyniku wymiany: " . $this->conn->error;
        }
    }

    public function closeConnection()
    {
        $this->conn->close();
    }
}