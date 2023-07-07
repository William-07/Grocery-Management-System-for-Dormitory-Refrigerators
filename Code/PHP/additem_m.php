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
            background-image: url("https://i.ibb.co/jhcbxhR/2.jpg");
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
    $database = "Milestone"; 

    // Create connection
    $conn = new mysqli($host, $user, $password, $database);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get current user ID
    $userID = $_SESSION['loginProfile']['uID'];
    // $userID = 1;
    $date = date("Y-m-d");
    $d = strtotime("+2 weeks");
    $expired = date("Y-m-d", $d);
    $item = $_REQUEST['item'];
    $placeID = $_POST['place'];

    settype($userID, "integer");
    settype($placeID, "integer");

    $sql = "INSERT INTO Grocery (Item_Name, Expired_Date, User_ID, Place_ID) VALUES ('$item', '$expired', $userID, $placeID)";
    $add_g = $conn->query($sql);

    if ($add_g === True) {
        echo "Item Stored successfully.";
        // echo nl2br("$item\n $expired\n "
        //         . "$userID\n $placeID");
        echo nl2br("\n Item Name:" . $item . "\n Expired Date:" . $expired ."\n User ID:" . $userID ."\n Place ID:" . $placeID);
        

        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
   
    $last_item = "SELECT Item_ID FROM Grocery ORDER BY Item_ID DESC LIMIT 1";
    $sql_itemid = $conn->query($last_item);

    while($id_row = $sql_itemid->fetch_assoc()) {
        $last_id = $id_row["Item_ID"];
    }

    settype($last_id, "integer");

    $sql2 = "INSERT INTO Stock_Record(Item_ID, Stock_Date, Stock_Out_Date) VALUES ($last_id, '$date', NULL)";
    

    $add_sr = $conn->query($sql2);

$conn->close();

?>
</body>
</html>
