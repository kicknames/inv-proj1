<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use Phalcon\Mvc\Model;

/**
 * Description of Category
 *
 * @author Francisco Martins
 */
class Category extends Model {

    public function initialize() {
        $this->setSource("category");
    }

    public $id;
    public $name;
    public $icon;

    public function getProducts() {
        return Products::find('category = ' . $this->id);
    }

}
