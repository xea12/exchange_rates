<?php

class Database {
    private $conn;
    
    public function __construct($db_host, $db_user, $db_password, $db_name) {
        $this->conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);
        $this->conn->set_charset("utf8mb4");
    }
    

}