<?php

use Phalcon\Di;
use Phalcon\Loader;
use Phalcon\Mvc\Application;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Router;
use Phalcon\Http\Request;
use Phalcon\Http\Response;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;
use Phalcon\Db\Adapter\Pdo\Mysql as Database;
use Phalcon\Mvc\Model\Manager as ModelManager;
use Phalcon\Mvc\Model\Metadata\Memory as ModelMetadata;
use app\helpers\SecurityHelper;
use Phalcon\Mvc\Url;
use app\services\session\SessionService;

/**
 * Very simple MVC structure
 */
$loader = new Loader();

$loader->registerDirs(
    [
        "../apps/controllers/",
        "../apps/models/",
        "../apps/helpers/"
    ]
);
$loader->registerNamespaces(
    [
        "app\helper" => "../apps/helpers/",
        "app\services\session" => "../apps/services"
    ]
);

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

// Registering the view component
$di->set(
    "view", function () {
    $view = new View();

    $view->setViewsDir("../apps/views/");

    return $view;
}
);

$di->set(
    "session", function () {
    return new SessionService($this, [
        "host" => "localhost",
        "username" => "root",
        "password" => "",
        "dbname" => "rest",
        ]
    );
}
);

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
