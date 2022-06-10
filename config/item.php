<?php
    class item{
        public $id;
        public $name;
        public $type;
        public $price;
        public $description;

        function __construct($id, $name, $type, $price, $description){
            $this->id = $id;
            $this->name = $name;
            $this->type = $type;
            $this->price = $price;
            $this->description = $description;

        }
    }
?>