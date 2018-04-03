<?php

use Phalcon\Mvc\Controller;

class ProductsController extends Controller {

    public function initialize() {
        
    }

    public function indexAction() {
        $this->view->categories = Category::find();
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
        $id = base64_decode($this->request->getQuery('id'));
        $_prod = Products::findFirst($id);
        $_prod->delete();
        $this->response->redirect("/Products/list")->send();
    }

    public function updateAction() {
        $id = base64_decode($this->request->getQuery('id'));
        $this->view->item = Products::findFirst($id);
    }
    
    public function categorysAction(){
        
    }

}
