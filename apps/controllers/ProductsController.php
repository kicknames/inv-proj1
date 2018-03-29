<?php

use Phalcon\Mvc\Controller;

class ProductsController extends Controller {

    public function initialize() {
        
    }

    public function indexAction() {
        
    }

    public function listAction() {
        $this->view->products = Products::find();
    }

    public function saveAction() {
        $_prod = new Products();
        $_prod->save(
                $this->request->getPost(), [
            "name",
            "price",
            "category",
                ]
        );
        $this->response->redirect("/Products")->send();
    }

    public function removeAction() {
        $id = $this->request->getQuery('id');
        $_prod = Products::findFirst($id);
        $_prod->delete();
        $this->response->redirect("/Products/list")->send();
    }

}
