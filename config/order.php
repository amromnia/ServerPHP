<?php

    require_once "config/item.php";
    require_once "config/user.php";

    class order{
        public $id;
        public $user;
        public $item;

        function __construct($id, $user, $item){
            $this->id = $id;
            $this->user = $user;
            $this->item = $item;
        }
    }
?>