<?php

/** 
 * Принимаем запросы клиента 
 * */

$APP = new App();

$get = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
$url_path = explode('/', parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));

$method = 'loadStart';
$parms = null;

if (isset($input['method']))
    $method = $input['method'];

else if (isset($url_path[3])) {
    $method = $url_path[3];
    $parms = array_slice($url_path, 4);
}

try {
    if (!method_exists($APP, $method))
        throw new Exception("Method does not exists!");

    $APP->$method($input, $parms, $get);
} catch (Exception $ex) {
    echo $ex->getMessage();
}
