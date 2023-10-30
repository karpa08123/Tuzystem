<?php

$host = "localhost";
$user = "root";
$pwd = "";
$db = "talktuza";

$conexion = mysqli_connect($host,$user,$pwd,$db);

if (mysqli_connect_errno()){
    echo "fallo la conexion <br>";
    exit();
}

mysqli_select_db($conexion, $db) or die("No se encuentra la db");