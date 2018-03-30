<?php

use Phalcon\Mvc\Controller;

class SessionController extends Controller {

    public function initialize() {
        if ($this->session->hasSessionStarted() && $this->session->getId() == null) {
            $this->response->redirect("/")->send();
            $this->session->endSession();
        }
    }

    public function doLoginAction() {
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        if ($this->session->doLogin($username, $password)) {
            $this->response->redirect('/Map/principal');
        }
        $this->response->redirect('/?login=false');
    }

    function logoutAction() {
        $this->session->endSession();
        $this->response->redirect('/');
    }
    
    function orderAction(){
        $this->session->goMap();
        $this->response->redirect('/restaurant');
    }

}
