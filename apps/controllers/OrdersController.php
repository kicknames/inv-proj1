<?php

use Phalcon\Mvc\Controller;

class OrdersController extends Controller {

    public function initialize() {
        
    }

    public function indexAction() {
        
    }

    public function menuAction() {
        $val = Category::find();
        $this->view->categorys = $val;
        $files = json_encode(scandir('img/icons'));
    }

}
