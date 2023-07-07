<?php
session_start();
require("userModel.php");
$UserName=$_POST['userid'];
$pwd=$_POST['password'];

//echo getUserStatus('user1'), $br;
//if (addUser( 'testID','321','New User',999)) {
$userProfile = getUserProfile( $UserName, $pwd);

if ($userProfile) {
	echo "Login Success! <br>";
	$_SESSION['loginProfile'] = $userProfile;
	if (($_SESSION['loginProfile']['uType']) == 'Normal') {
		header("Location: show.php");
	}

	else if (($_SESSION['loginProfile']['uType']) == 'Admin'){
		header("Location: allstock.php");
	}
} else {
	$_SESSION['loginProfile'] = NULL;
	echo '<script type="text/javascript">'; 
	echo 'alert("Login Fail");'; 
	echo 'window.location.href = "Login.html";';
	echo '</script>';
	
}


?>

</body>
</html>


