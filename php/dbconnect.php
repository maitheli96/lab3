<?php
$servername = "localhost";
$username  = "h_electricianuser";
$password  = "HRSgsbQWFty+";
$dbname    ="hireelec_h_electrician";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn) {
    echo "success";
}
?>
