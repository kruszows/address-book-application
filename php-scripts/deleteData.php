<?php

$host = "localhost"; 
$user = "root"; 
$password = "LostInLimbo11="; 
$dbname = "contacts";

$connect = mysqli_connect($host, $user, $password,$dbname);

if (!$connect) {
 die("Connection failed: " . mysqli_connect_error());
}

$data = json_decode(file_get_contents("php://input"), true);

$CustomerID = mysqli_real_escape_string($connect, $data['CustomerID']);

$query = "delete from contacts where CustomerID = '$CustomerID'";

if(mysqli_query($connect, $query)) {
    echo "Successfully deleted contact";
}
else {
    echo "Failed to delete contact";
}

mysqli_close($connect);

?>