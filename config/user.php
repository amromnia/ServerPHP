<?php
    class user{
        public $username;
        public $password;
        public $email;
        public $phone;
        public $type;
        public $picture;
        public $nationalID;

        function __construct($user, $pass, $em, $ph, $type, $picture, $nationalID){
            $this->username = $user;
            $this->password = $pass;
            $this->email = $em;
            $this->phone = $ph;
            $this->type = $type;
            $this->picture = $picture;
            $this->nationalID = $nationalID;
        }
    }
?>