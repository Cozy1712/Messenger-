<?php
include('config.php');
session_start();
$message="";
if(isset($_POST['login'])){
	if($_POST['user']!= "" && $_POST['pass']!= ""){
		$username = $_POST ['user'];
		$password = $_POST ['pass'];
		$verify =  mysqli_query($conn, "SELECT * FROM chat2 WHERE username = '$username'");
		 $count = mysqli_num_rows($verify);
        if ($count == 1) {
			session_start();
			$_SESSION["userid"] = $username;
            header("location:../messenger/chat.php?error = none");
        }
         else{ 
         	$message = "username and password combination error";}
        }
		
         else{ $message = "ensure you enter username and password";}

        
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LOGIN FORM</title>
	<link rel="stylesheet" type="text/css" href="css/register.css">

</head>
<body>
	<form method="POST" action="login.php" class="formlogin">
		<p><?php echo $message ?></p>
		<label>User Name</label>
		<br>
		<input type="text" name="user" placeholder="Enter your Username" class="user">
		<br><br>
	    
	    <label>Password</label>
		<br>
		<input type="password" name="pass" placeholder="Enter your password" class="pass">
		<br><br>
		<input type="submit" name="login" class="login" value="login">
	</form>

</body>
</html>
<!-- [] = array
     {} = object
     "" = string -->