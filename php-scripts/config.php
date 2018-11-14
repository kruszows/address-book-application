<?php

$host = "localhost"; 
$user = "root"; 
$password = "LostInLimbo11="; 
$dbname = "contacts";

$connect = mysqli_connect($host, $user, $password,$dbname);

if (!$connect) {
 die("Connection failed: " . mysqli_connect_error());
}

?>