<?php

use Phalcon\Mvc\Controller;

class OrdersController extends Controller {

    public function initialize() {
        
    }

    public function indexAction() {
        
    }

    public function createAction() {
        try {
            $this->view->products = Products::find();
            $this->view->category = Category::find();
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    public function listAction() {
        
    }

}
