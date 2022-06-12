<?php
    class item{
        public $id;
        public $name;
        public $type;
        public $price;
        public $description;
        public $image;
        function __construct($id, $name, $type, $price, $description,$image){
            $this->id = $id;
            $this->name = $name;
            $this->type = $type;
            $this->price = $price;
            $this->description = $description;
            $this->image=$image;
        }
    }
?>