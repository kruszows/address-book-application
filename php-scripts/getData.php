<?php

include("config.php");

$sel = mysqli_query($connect, "select * from contacts order by CompanyName, ContactName");
$data = array();

while($row = mysqli_fetch_array($sel)) {
    $data[] = $row;
}
echo json_encode($data);

mysqli_close($connect);

?>