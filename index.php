<?php
ini_set('display_errors', 0);

if (session_id() === "") {
	session_start();
}

if (isset($_POST) || isset($_GET) || isset($_FILES)) $input = array_merge($_GET, $_POST, $_FILES);

/** Настройки */
include_once("settings.php");
/** Функционал приложения */
include_once("app.php");
/** API клиента */
include_once("client_api.php");
