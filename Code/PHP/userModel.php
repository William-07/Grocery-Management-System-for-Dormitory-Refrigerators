<?php
require_once("connect.php");

function getUserProfile($ID, $passWord) {
	global $db;

	$sql = "SELECT Username, UserType FROM Users WHERE User_ID=? and Password=?";

	$stmt = mysqli_prepare($db, $sql); //prepare sql statement

	mysqli_stmt_bind_param($stmt, "ss", $ID, $passWord); //bind parameters with variables

	mysqli_stmt_execute($stmt);  //執行SQL

    $result = mysqli_stmt_get_result($stmt); //get the results
	

	
	
	if ($row=mysqli_fetch_assoc($result)) {
		//return user profile
		$ret=array('uID' => $ID, 'uName' => $row['Username'], 'uType' => $row['UserType']);
	} else {
		//ID, password are not correct
		$ret=NULL;
	}
	return $ret;

}



?>




