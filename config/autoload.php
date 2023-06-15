<?php

// include src all php file in src folder 

spl_autoload_register(function($class_name){
    require "src/$class_name".".php";
});