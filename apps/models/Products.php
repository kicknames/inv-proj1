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
        return $this->id;
    }

    function getName() {
        return $this->name;
    }

    function getPrice() {
        return $this->price;
    }

    function getCategory() {
        if ($this->category == '1') {
            return 'Menu principal';
        } else {
            return 'Sub categoria';
        }
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
