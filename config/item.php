<?php
    class item{
        public $id;
        public $name;
        public $type;
        public $price;

        function __construct($id, $name, $type, $price){
            $this->id = $id;
            $this->name = $name;
            $this->type = $type;
            $this->price = $price;

        }
    }
?>