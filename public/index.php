<?php

use Phalcon\Di;
use Phalcon\Loader;
use Phalcon\Mvc\Application;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Router;
use Phalcon\Http\Request;
use Phalcon\Http\Response;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;
use Phalcon\Mvc\View\Engine\Volt;
use Phalcon\Mvc\Model\Manager as ModelManager;
use Phalcon\Mvc\Model\Metadata\Memory as ModelMetadata;
use Phalcon\Mvc\Url;
use Phalcon\Db\Adapter\Pdo\Mysql;

use app\services\session\SessionService;
use app\services\TranslatorService;
use app\helpers\SecurityHelper;

/**
 * Ficheiro de Bootstrap do phalcon
 * Autoload
 * 
 * @see https://github.com/phalcon/docs/blob/3.3/en/tutorial-base.md/#bootstrap - Docs
 */
$loader = new Loader();
/* Registas o diretorios para a framework saber onde estao as coisas */
$loader->registerDirs(
        [
            "../apps/controllers/",
            "../apps/models/",
            "../apps/helpers/"
        ]
);
/* Registo de namespaces */
$loader->registerNamespaces(
        [
            "app\helper" => "../apps/helpers/",
            "app\services\session" => "../apps/services",
            "app\services" => "../apps/services"
        ]
);
/* inicia os parametros na framework */
$loader->register();

$di = new Di();

// Registering a router
$di->set("router", Router::class);

$di->set("url", Url::class);

// Registering a dispatcher
$di->set("dispatcher", MvcDispatcher::class);

// Registering a Http\Response
$di->set("response", Response::class);

// Registering a Http\Request
$di->set("request", Request::class);

$di->set(
        "voltService", function ($view, $di) {
    $volt = new Volt($view, $di);

    $volt->setOptions(
            [
                "compiledPath" => "../apps/cache/",
                "compiledExtension" => ".compiled",
                'compileAlways' => true
            ]
    );

    return $volt;
}
);
// Registering the view component
$di->set(
        "view", function () {
    $view = new View();

    $view->setViewsDir("../apps/views/");
    $view->registerEngines(
            [
                ".volt" => "voltService",
            ]
    );
    return $view;
}
);
$di->set(
        "session", function () {
    return new SessionService($this, [
        "host" => "eu-cdbr-west-02.cleardb.net",
        "username" => "baecf296ef14dd",
        "password" => "065fb7b9",
        "dbname" => "heroku_97aca66527a4246",
            ]
    );
},true
);
$di->set(
        "db", function () {
    return new Mysql(
            [
        "host" => "eu-cdbr-west-02.cleardb.net",
        "username" => "baecf296ef14dd",
        "password" => "065fb7b9",
        "dbname" => "heroku_97aca66527a4246",
            ]
    );
}
);
$di->set(
        "tradutor", function () {
    return new TranslatorService();
}, true);

//Registering the Models-Metadata
$di->set("modelsMetadata", ModelMetadata::class);

//Registering the Models Manager
$di->set("modelsManager", ModelManager::class);

$di->set(
        "crypt", function () {
    return new SecurityHelper();
}
);
try {
    $application = new Application($di);

    $response = $application->handle();

    echo $response->getContent();
} catch (Exception $e) {
    echo $e->getMessage();
}
