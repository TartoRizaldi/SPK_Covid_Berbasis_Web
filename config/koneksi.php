<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "spk_covid";

mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Maaf, Database tidak bisa dibuka");
?>