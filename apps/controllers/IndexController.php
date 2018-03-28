<?php

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{

    public function initialize()
    {
        if ($this->session->hasSessionStarted() && $this->session->getId() != null) {
            $this->response->redirect("/Products")->send();
        }
    }

    public function indexAction()
    {
 
    }
}
