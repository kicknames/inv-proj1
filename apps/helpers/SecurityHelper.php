<?php
namespace app\helpers;

/**
 * Helper de encryptações
 *
 * @author FCMartins
 * @version 1.00.00
 */
class SecurityHelper
{

    /**
     * Gera hash de ums password string.
     * 
     * @param string $_pwdToEncrypt - Password
     * 
     * @return Encrypted Hash String
     */
    public function encryptPassword($_pwdToEncrypt)
    {
        return password_hash(md5(base64_encode($_pwdToEncrypt)), PASSWORD_DEFAULT);
    }

    /**
     * Valida se a password é igual á hash
     * 
     * @param type $password    - Password
     * @param type $hash        - Hash de encryptação
     * @return boolean          - Resultado  
     */
    public function passwordVerify($password, $hash)
    {
        $_login = md5(base64_encode($password));
        return password_verify($_login, $hash);
    }
}
