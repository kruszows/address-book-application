<?php

include("config.php");

$data = json_decode(file_get_contents("php://input"), true);

$faxGiven = isset($data['Fax']);
$regionGiven = isset($data['Region']);

$CustomerID = mysqli_real_escape_string($connect, $data['CustomerID']);
$ContactName = mysqli_real_escape_string($connect, $data['ContactName']);
$ContactTitle = mysqli_real_escape_string($connect, $data['ContactTitle']);
$CompanyName = mysqli_real_escape_string($connect, $data['CompanyName']);
$Address = mysqli_real_escape_string($connect, $data['Address']);
$City = mysqli_real_escape_string($connect, $data['City']);
if($regionGiven) $Region = mysqli_real_escape_string($connect, $data['Region']);
$Country = mysqli_real_escape_string($connect, $data['Country']);
$PostalCode = mysqli_real_escape_string($connect, $data['PostalCode']);
$Phone = mysqli_real_escape_string($connect, $data['Phone']);
if($faxGiven) $Fax = mysqli_real_escape_string($connect, $data['Fax']);
$Email = mysqli_real_escape_string($connect, $data['Email']);

if($faxGiven && $regionGiven): $query = "insert into contacts values ('$CustomerID', '$CompanyName', '$ContactName', '$ContactTitle', '$Address', '$City', '$Email', '$PostalCode', '$Country', '$Phone', '$Fax', '$Region')";
elseif($faxGiven): $query = "insert into contacts(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Email, PostalCode, Country, Phone, Fax) values ('$CustomerID', '$CompanyName', '$ContactName', '$ContactTitle', '$Address', '$City', '$Email', '$PostalCode', '$Country', '$Phone', '$Fax')";
elseif($regionGiven): $query = "insert into contacts(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Email, PostalCode, Country, Phone, Region) values ('$CustomerID', '$CompanyName', '$ContactName', '$ContactTitle', '$Address', '$City', '$Email', '$PostalCode', '$Country', '$Phone', '$Region')";
else: $query = "insert into contacts(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Email, PostalCode, Country, Phone) values ('$CustomerID', '$CompanyName', '$ContactName', '$ContactTitle', '$Address', '$City', '$Email', '$PostalCode', '$Country', '$Phone')";
endif;

if(mysqli_query($connect, $query)) {
    echo "Successfully added contact";
}
else {
    echo "Failed to add contact";
}

mysqli_close($connect);

?>