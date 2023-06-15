<?php

class Database{

    // database 
    public string $servername;
    public string $dataname;
    public string $username;
    public string $password;

    // database data set
    public function __construct($servername, $dataname, $username, $password){
        $this->servername=$servername;
        $this->dataname=$dataname;
        $this->username=$username;
        $this->password=$password;
        $this->connect();
    }

    public function connect(){
        // new pdo
        $connection=new PDO("mysql:host=$this->servername;dbname=$this->dataname", $this->username, $this->password);
        // set atribute of connect
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // return resault
        return $connection;
    }

}