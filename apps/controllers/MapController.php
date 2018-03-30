<?php

use Phalcon\Mvc\Controller;

class MapController extends Controller {

    public function initialize() {

    }

    public function restaurantAction() {
        $this->view->products = Products::find();
    }

}
