<?php

use Phalcon\Mvc\Controller;

class ProductsController extends Controller
{

    public function initialize()
    {
        if ($this->session->hasSessionStarted() && $this->session->getId() == null) {
            $this->response->redirect("/")->send();
            $this->session->endSession();
        }
    }

    public function indexAction()
    {
        
    }
}
