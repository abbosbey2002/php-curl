<?php

require_once 'autoload.php';

// database 
$database=new Database('127.0.0.1', "news", "abbos", "abbos2002");

// pdo

$pdo=$database->connect();

// connect

Main::$pdo=$pdo;
