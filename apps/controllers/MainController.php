<?php

use Phalcon\Mvc\Controller;

class MainController extends Controller
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
        if ($this->session->hasSessionStarted()) {
            $this->response->redirect("/Products")->send();
        }
    }
}
