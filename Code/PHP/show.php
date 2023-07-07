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
<center>
<style>
table {
  border-collapse: collapse;
  width: 100%;
  text-align: center;
}

th, td {
  text-align: center;
  padding: 8px;
}

th {
  background-color: #555;
  color: white;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #ddd;
}

.no-items {
  font-size: 18px;
  line-height: 28px;
  text-align: center;
}

body {
            background-image: url("https://i.ibb.co/5469mvJ/3.png");
            background-size: cover;
        }
</style>

<div id="item-list">
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

    // Retrieve items from Grocery table for current user
    $sql = "SELECT * FROM Grocery INNER JOIN Place ON Grocery.Place_ID = Place.Place_ID WHERE User_ID = '$userID' AND Item_Status = 0";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of each row
        echo "<table>";
        echo "<tr>";
        echo "<th>Item ID</th>";
        echo "<th>Expired Date</th>";
        echo "<th>Item Name</th>";
        echo "<th>Place Name</th>";
        echo "</tr>";
        $i = 0;
        while($row = $result->fetch_assoc()) {
            $color = ($i % 2 == 0) ? "#fff" : "#f2f2f2"; 
            echo "<tr style='background-color: " . $color . ";'>";
            echo "<td><a>" . $row["Item_ID"] . "</a></td>";
            echo "<td><a>" . $row["Expired_Date"] . "</a></td>";
            echo "<td><a>" . $row["Item_Name"] . "</a></td>";
            echo "<td><a>" . $row["Place_Name"] . "</a></td>";
            echo "</tr>";
            $i++;
        }
        echo "</table>";
    } else {
        echo "<p class='no-items'>No items found.</p>";
    }

    $conn->close();
?>
</div>

</center>
</body>
</html>
