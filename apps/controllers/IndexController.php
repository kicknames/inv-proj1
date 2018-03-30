<?php

use Phalcon\Mvc\Controller;

class IndexController extends Controller {

    public function initialize() {
        if ($this->session->hasSessionStarted() && $this->session->getId() != null) {
            $this->response->redirect("/Map/restaurant")->send();
        }
    }

    public function indexAction() {
        $this->view->showWarning = $this->request->getQuery('login');
        $this->view->isLogin = true;
    }

    public function boiAction() {
        $this->view->NOME = 'Manecas';
    }

}
