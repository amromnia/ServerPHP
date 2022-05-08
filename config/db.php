<?php
    class DatabaseConnection{
        private $conn = null;
        public function getConnection(){
            $this->conn = new mysqli("localhost", "root", "", "restaurant");
            if($this->conn){
                return $this->conn;
            }
            echo "ERROR CONNECTING TO DB...";
        }
    }
?>