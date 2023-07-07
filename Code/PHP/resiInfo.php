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
        <h1>Storage System Admin Page</h1>
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
            
            <li><a href="resiInfo.php">Resident Info</a></li>
            <li><a href="stockHis.php">Stock History</a></li>
            <li><a href="allStock.php">All Stock</a></li>
            <li><a href="violation.php">Violation</a></li>
            <li><a href="Login.html">Log Out</a></li>
            
        </ul>
        </div>

    </nav>

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
<h1 id="header">View resident information</h1>
    <!-- The main content  -->
    <main>
    <div id="content" align="center"> 
    <?php
        $server = "localhost";
        $user = "root";
        $password = "";
        $dbname = "Milestone";

        // Creating the connection
        $conn = mysqli_connect($server, $user, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Query table
        $sql = "SELECT * FROM resident";
        $result = $conn->query($sql);

        // Display  information in HTML
        echo "<table>";
        echo "<tr><th>Name</th><th>Contact</th><th>Address</th><th>Room Number</th></tr>";
        if($result){
            $i = 0;
            while($row = mysqli_fetch_assoc($result)) {
                $color = ($i % 2 == 0) ? "#fff" : "#f2f2f2"; 
                echo "<tr style='background-color: " . $color . ";'>";
                echo  "</td><td>" . $row["Fullname"] . "</td><td>" . $row["Contact"] . "</td><td>" . $row["Address"]. "</td><td>" . $row["Room_No"]."</td></tr>";
            $i++;}
        } else {
            echo "Error" . $conn->error;
        }
        echo "<table>";
        // Close database connection
        $conn->close();
    ?>
    </div>
    </main>



    </article>

</body>

</html>





