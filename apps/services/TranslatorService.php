<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\services;

use Phalcon\Translate\Adapter\NativeArray;

/**
 * Description of TranslatorService
 *
 * @author Francisco Martins
 */
class TranslatorService {

    /**
     * Aqui fica guardado os texto
     * 
     * @var Phalcon\Translate\Adapter\NativeArray 
     */
    private $_textos;

    /**
     * Contrutor da class
     * 
     * Automáticamente lÊ o ficheiro de tradução adquando e guarda-o na variável textos
     * Isto deverá ser otimizado para usar uma chache senão a leitura do ficheiro pode por a aplicação mais lenta
     */
    public function __construct() { /* Inicia os textos */
        $this->getTranslation();
    }

    private function getTranslation() {
        // Ask browser what is the best language
        $language = explode(',', $_SERVER['HTTP_ACCEPT_LANGUAGE']);
        $language = explode('-', $language[0]);
        $translationFile = '../apps/lang/' . $language[0] . '.php';

        // Check if we have a translation file for that lang
        if (file_exists($translationFile)) {
            require $translationFile;
        } else {
            // Fallback to some default
            require "../apps/lang/en.php";
        }

        // Return a translation object
        $this->_textos = new NativeArray(
                [
            "content" => $lang, /* Quando aqui diz que não foi incializada, ela é inicializada ali em cima ao fazeres requeri do ficheiro de linguágem */
                /* Ja que ele tem esta variável dentro - depois ve os ficheiro que alterei a sua forma */
                ]
        );
    }

    /**
     * Devolve a label correspondente a um chave:
     * 
     * Exemplo: chave "TextoBotãoCriar" = "Criar"
     * 
     * @param  string  $_query : Idêntificador da label
     * @return string          : Texto para apresentação na label
     */
    public function get($_query) {
        return $this->_textos->_($_query) != NULL ? $this->_textos->_($_query) : '';
    }

}
