<?php
/*
Connected to the database
*/
$host = 'localhost'; 
$user = 'root'; 
$pass = ''; 
$dbName = 'Grocery Management System'; //Database Name
$db = mysqli_connect($host, $user, $pass, $dbName) or die('Error with MySQL connection'); 
mysqli_query($db,"SET NAMES utf8"); 
?>