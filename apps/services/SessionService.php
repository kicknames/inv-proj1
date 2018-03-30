<?php

namespace app\services\session;

/**
 * - Define uma class da framework 
 * - O 'as' quer é tipo dar um novo nome, neste caso em vez de Mysql passou a chamar-se SessionAdapter
 * 
 * @see https://olddocs.phalconphp.com/en/3.0.0/api/Phalcon_Db_Adapter_Pdo_Mysql.html - Mais informações
 */
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\Session\Adapter\Files as Session;

/**
 * Description of SessionService
 *
 * @author FCMartins
 * @version 1.00.00
 */
class SessionService extends Session {

    private $_di;
    private $MySql;

    /**
     * Inicializa o serviço que disponibiliza a funcionalidades de sessão da aplicação
     * 
     * Exemplo de um ficheiro de configuração: (typeof \Phalcon\Config)
     * $config = [
     *      "host"     => "localhost",
     *      "dbname"   => "blog",
     *      "port"     => 3306,
     *      "username" => "sigma",
     *      "password" => "secret",
     * ];
     * 
     * @param type $_config
     */
    function __construct($di, $_config) {
        parent::__construct();
        $this->start();
        $this->MySql = new Mysql($_config);
        $this->_di = $di;
    }

    /** @return \app\helpers\SecurityHelper Class de encryptação */
    private function _crypt() {
        return $this->_di->get('crypt');
    }

    /**
     * Função que inicia a sessão do utilizador
     * 
     * @param string $_user         - Username do utilizador
     * @param string $_password     - Password do utilizador
     * 
     * @return boolean Retorna com o resultado da operação.
     */
    function doLogin($_user, $_password) {
        try {
            /* Query a ser executada á base de dados */
            $Query = "SELECT * FROM users WHERE username = '" . $_user . "'"; // . " AND password = " . $_password;
            /* Executa a query e devolve o resultado */
            $resultset = $this->MySql->query($Query);
            /* Idêntifica o resultado */
            $_result = $resultset->fetch();
            $_res = $_result['password'];
            $this->MySql->close();
            $res = $this->_crypt()->passwordVerify($_password, $_res);
            if ($res) {
                $this->sessionStart($_result['id'], $_user);
            }
            return $res;
        } catch (Exception $ex) {
            /* Em caso de execepção é escrito um log nos ficheiros de logging do servidor , no caso do wamp : wamp/logs */
            LogUtils::error('Exception in ' . __CLASS__ . '.' . __FUNCTION__ . '()' . $ex->getMessage());
        }
    }

    private function sessionStart($id, $_username) {
        $this->set('id', $id);
        $this->set('username', $_username);
    }

    public function hasSessionStarted() {
        return $this->has('username');
    }

    public function endSession() {
        $this->destroy();
    }

    public function getId() {
        return $this->get('username');
    }
    
    public function incre($var){
        return $var++;
    }

}
