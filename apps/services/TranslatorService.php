<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use Phalcon\Translate\Adapter\NativeArray;

namespace app\services;

/**
 * Description of TranslatorService
 *
 * @author Francisco Martins
 */
class TranslatorService{
    //put your code here
    
    
     protected function getTranslation()
    {
        // Ask browser what is the best language
       $language = explode(',', $_SERVER['HTTP_ACCEPT_LANGUAGE']);

        $translationFile = '../app/lang/' . $language[0] . '.php';

        // Check if we have a translation file for that lang
        if (file_exists($translationFile)) {
            require $translationFile;
        } else {
            // Fallback to some default
            require "app/lang/en.php";
        }

        // Return a translation object
        return new NativeArray(
            [
                "content" => $lang,
            ]
        );
    }

}
