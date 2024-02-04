<?php

$server = "localhost:3306";
$login = "root";
$pass = "";

try{
    $connexion = new PDO("mysql:host=$server;dbname=qcm",$login,$pass);
    $connexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    
    
}
catch(PDOException $e){
    
    /* phpinfo(); */

    echo 'Erreur de connexion :'.$e->getMessage();
}






?>