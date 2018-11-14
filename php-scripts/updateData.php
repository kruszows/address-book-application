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

if($faxGiven && $regionGiven): $query = "update contacts set CompanyName = '$CompanyName', ContactName = '$ContactName', ContactTitle = '$ContactTitle', Address = '$Address', City = '$City', Email = '$Email', PostalCode = '$PostalCode', Country = '$Country', Phone = '$Phone', Fax = '$Fax', Region = '$Region' where CustomerID = '$CustomerID'";
elseif($faxGiven): $query = "update contacts set CompanyName = '$CompanyName', ContactName = '$ContactName', ContactTitle = '$ContactTitle', Address = '$Address', City = '$City', Email = '$Email', PostalCode = '$PostalCode', Country = '$Country', Phone = '$Phone', Fax = '$Fax' where CustomerID = '$CustomerID'";
elseif($regionGiven): $query = "update contacts set CompanyName = '$CompanyName', ContactName = '$ContactName', ContactTitle = '$ContactTitle', Address = '$Address', City = '$City', Email = '$Email', PostalCode = '$PostalCode', Country = '$Country', Phone = '$Phone', Region = '$Region' where CustomerID = '$CustomerID'";
else: $query = "update contacts set CompanyName = '$CompanyName', ContactName = '$ContactName', ContactTitle = '$ContactTitle', Address = '$Address', City = '$City', Email = '$Email', PostalCode = '$PostalCode', Country = '$Country', Phone = '$Phone' where CustomerID = '$CustomerID'";
endif;

if(mysqli_query($connect, $query)) {
    echo "Successfully updated contact";
}
else {
    echo "Failed to update contact";
}

mysqli_close($connect);

?>