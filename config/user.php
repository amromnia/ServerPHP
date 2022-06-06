<?php
    class user{
        public $username;
        public $password;
        public $email;
        public $phone;

        function __construct($user, $pass, $em, $ph){
            $this->username = $user;
            $this->password = $pass;
            $this->email = $em;
            $this->phone = $ph;

        }
    }
?>