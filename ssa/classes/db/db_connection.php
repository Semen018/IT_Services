<?php

namespace DBConnection;

use Exception;
use PDOException;

/** Подключения к бд */
class DBConnection
{
    //Параметры подключения к бд
    var $DATABASES;
    var $DATABASE_PROFILE_NAME = "DEFAULT";

    private static $instances = [];

    protected function __construct($a, $i)
    {
        switch ($i) {
            case 1:
                $this->DATABASES = $a[0];
                $this->DATABASE_PROFILE_NAME = "DEFAULT";
                break;
            case 2:
                $this->DATABASES = $a[0];
                $this->DATABASE_PROFILE_NAME = $a[1];
                break;
        }
    }

    protected function __clone()
    { }

    public function __wakeup()
    {
        throw new Exception("Cannot unserialize a singleton.");
    }

    public static function getInstance(): DBConnection
    {
        $a = \func_get_args();
        $i = \func_num_args();
        $dbc = static::class;
        if (!isset(static::$instances[$dbc])) {
            static::$instances[$dbc] = new static($a, $i);
        }

        return (static::$instances[$dbc]);
    }

    public function Connect()
    {
        $Database = $this->DATABASES[$this->DATABASE_PROFILE_NAME]["NAME"];
        $serverName = $this->DATABASES[$this->DATABASE_PROFILE_NAME]["HOST"];
        $CharacterSet = $this->DATABASES[$this->DATABASE_PROFILE_NAME]["CHARSET"];
        $UID = $this->DATABASES[$this->DATABASE_PROFILE_NAME]["USER"];
        $PWD = $this->DATABASES[$this->DATABASE_PROFILE_NAME]["PASSWORD"];
        $DRIVER = isset($this->DATABASES[$this->DATABASE_PROFILE_NAME]['DRIVER']) ? $this->DATABASES[$this->DATABASE_PROFILE_NAME]['DRIVER'] : "mysql";
        $result = array();
        $Log = new Log();

        if (count($this->getDrivers()) > 0) {

            try {
                if (!in_array($DRIVER, $this->getDrivers(), TRUE)) {
                    $Log->Add("Драйвер " . $DRIVER . " не установлен");
                    $result["status"] = 0;
                }
            } catch (PDOException $ex) {
                $Log->Add("Ошибка подключения к базе данных: <br> {$ex->getMessage()}");
                $result["status"] = 0;
            }

            $settings = array();

            $result['driver'] = $DRIVER;
            if ($DRIVER == 'mysql') {
                $dsn = "{$DRIVER}:dbname={$Database};host={$serverName}";
                $settings = array(\PDO::MYSQL_ATTR_INIT_COMMAND => $CharacterSet, \PDO::FETCH_ASSOC, \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION);
            }
            if ($DRIVER == "odbc") {
                $dsn = "{$DRIVER}:Driver={SQL Server};Server={$serverName};Database={$Database}";
                $settings = array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION);
            }
            if ($DRIVER == 'dblib') {
                $dsn = "{$DRIVER}:Driver={$DRIVER};host={$serverName};Database={$Database}";
            }

            if (isset($dsn)) {
                try {
                    $dbh = new \PDO(
                        $dsn,
                        $UID,
                        $PWD,
                        $settings
                    );
                    $result["status"] = 1;
                    $Log->Add("Соединение успешно установлено");
                    $result['connection'] = $dbh;
                } catch (PDOException $e) {
                    $Log->Add("Подключение не удалось: '. {$e->getMessage()}");
                    $result["status"] = 0;
                }
            }
        } else {
            $Log->Add("PDO не поддерживает ни одного драйвера");
            $result['status'] = 0;
        }

        $result['log'] = $Log->Get();

        return $result;
    }

    //Получаем доступные драйверы
    function getDrivers()
    {
        return \PDO::getAvailableDrivers();
    }
}

class Command
{
    var $conn; //connection
    var $sql; //Запрос или массив запросов
    var $params; //параметры

    function __construct()
    {
        $a = func_get_args();
        $i = func_num_args();

        switch ($i) {
            case 2:
                $this->conn = $a[0];
                $this->sql = $a[1];
                $this->params = null;
                break;
            case 3:
                $this->conn = $a[0];
                $this->sql = $a[1];
                //массив
                $this->params = $a[2];
                break;
        }
    }

    //select
    function Execute()
    {
        $result = array('status' => 0); //результирующая выборка
        $parms = $this->params != null ? $this->params : null;
        $Log = new Log();

        $connection = $this->conn['connection'];
        if ($this->conn['status'] != 1) {
            $result['status'] = 0;
            return $result;
        }

        try {
            $stmt = $connection->prepare($this->sql);
            if ($stmt->execute($parms)) {
                $res = array();
                $i = 0;
                $result['status'] = 1;
                $Log->Add("Запрос успешно выполнен");
                while ($row = $stmt->fetch()) {
                    if ($this->conn['driver'] == 'odbc')
                        $row = array_map(array($this, 'changeEncodingArrayElementsTo1251'), $row);
                    $res[$i] = $row;
                    $i++;
                }
                $result['data'] = $res;
                $result['log'] = $Log;
            }

            $stmt = null;
            $connection = null;
        } catch (PDOException $e) {
            $Log->Add($e->getMessage());
            $result['log'] = $Log;
        }

        return $result;
    }

    function changeEncodingArrayElementsTo1251($str)
    {
        return iconv('Windows-1251', 'UTF-8', $str);
    }

    function changeEncodingArrayElementsToUTF($str)
    {
        return iconv('UTF-8', 'Windows-1251', $str);
    }

    //insert update delete, simple stored procedures withoud output parameters
    function ExecuteNonQuery()
    {
        $result = array('status' => 0);
        $parms = $this->params != null ? $this->params : null;
        $Log = new Log();

        if ($this->conn['driver'] == 'odbc')
            $parms = array_map(array($this, 'changeEncodingArrayElementsToUTF'), $parms);

        $connection = $this->conn['connection'];

        $result['status'] = $this->conn['status'] == 1 ? 1 : 0;
        if ($result['status'] == 0) return $result;

        try {
            $stmt = $connection->prepare($this->sql);

            if ($stmt->execute($parms))
                $result['status'] = 1;

            $stmt = null;
            $connection = null;
        } catch (PDOException $e) {
            $Log->Add($e->getMessage());
        }
        $result['log'] = $Log->Get();
        return $result;
    }
}

class Log
{

    var $log = array();

    function Add($message)
    {
        array_push($this->log, $message);
    }

    function Get()
    {
        return $this->log;
    }

    function Erase()
    {
        $this->log = array();
    }

    function Count()
    {
        return count($this->log);
    }
}
