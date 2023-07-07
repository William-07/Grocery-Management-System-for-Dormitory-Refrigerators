<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Storage System</title>
    <link rel="stylesheet" href="/TaskB/css/home.css">
    <link rel="stylesheet" href="/TaskB/css/navbar.css">
    <link rel="stylesheet" href="/TaskB/css/header.css">
    <link rel="stylesheet" href="/TaskB/css/item.css">
    <script src="/TaskB/js/item.js" defer></script>
    <script src="/TaskB/js/navbar.js" defer></script>
    <style>
    header {
            display: flex;
            justify-content: center;
            align-items: center;
            /* height: 100px; */
        }
    body {
            background-image: url("https://i.ibb.co/gyCC1xp/Picture1.png");
            background-size: cover;
        }
</style>
</head>
<body>
<header>
    <div class="head">
        <h1>Storage System</h1>
    </div>
    </header>
    <!-- The navigation bar -->
    <nav class="navbar">
        <!--    Show toggle button-->
        <a href="#" class="toggle-button">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </a>
        <!--    Show  navbar links-->
        <div class="navbarLink">
        <ul>
            
            <li><a href="show.php">My Item</a></li>
            <li><a href="addform.php">Add</a></li>
            <li><a href="remove.php">Remove</a></li>
            <li><a href="Login.html">Log Out</a></li>
            
        </ul>
        </div>

    </nav>
	
<body>
<?php
session_start();
    $host = "localhost";
    $user = "root"; 
    $password = ""; 
    $database = "Grocery Management System"; 

    // Create connection
    $conn = new mysqli($host, $user, $password, $database);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get current user ID
    $userID = $_SESSION['loginProfile']['uID'];
    //$userID = 1;
    $date = date("Y-m-d");
    $itemid2 = $_REQUEST['item2'];

    settype($userID, "integer");
    settype($itemid2, "integer");

    $sql = "UPDATE Grocery SET Item_Status = 1 WHERE User_ID = $userID and Item_ID = $itemid2";
    $update_g = $conn->query($sql);

    if ($update_g === True) {
        echo "Item Removed successfully.";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $sql2 = "UPDATE Stock_Record SET Stock_Out_Date = '$date' WHERE Item_ID = $itemid2";

    $update_sr = $conn->query($sql2);

    if ($update_sr === True) {
        echo "\n My Item Updated successfully.";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

$conn->close();

?>
</body>
</html>
