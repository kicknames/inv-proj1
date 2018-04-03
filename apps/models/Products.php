<?php

use Phalcon\Mvc\Model;

class Products extends Model {

    public function initialize() {
        $this->setSource("products");
    }

    private $id;
    private $pic;
    private $name;
    private $price;
    private $category;

    function getPic() {
        return $this->pic;
    }

    function setPic($pic) {
        $this->pic = $pic;
    }

    function getId() {
        return base64_encode($this->id);
    }
    
    function getNormalId(){
        return str_pad($this->id, 4, '0', STR_PAD_LEFT);;
    }

    function getName() {
        return $this->name;
    }

    function getPrice() {
        return $this->price;
    }

    function getCategory() {
        return Category::find($this->category);
    }

    function setId($id) {
        $this->id = $id;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setPrice($price) {
        $this->price = $price;
    }

    function setCategory($category) {
        $this->category = $category;
    }

}
