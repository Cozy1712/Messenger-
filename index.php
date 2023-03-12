<?php
 include('config.php');	
 $comment ="";

 //you can also use if(empty)
 if(isset($_POST['register'])){


 //TO CHECk wealther the user input has already exit in username
 	
$check = mysqli_query($conn, "SELECT * FROM chat2 WHERE username = '{$_POST['user']}'");

 	if($_POST['fname']=="" || $_POST['lname']=="" ||$_POST['user']=="" || $_POST['pass']=="" || $_POST['conf']=="")
 	{
 		$comment ="All field required!";
 	}

 	//  the greater than zero means if it can only have one usernmae if two it will show already exit
 elseif (mysqli_num_rows($check) > 0) {$comment = "username already exit";
 		// code...
 	}	
elseif(strlen($_POST['pass']) < 7){
	$comment = "the password is too short";
}
elseif($_POST['pass'] != $_POST['conf']){
	$comment = "your password and comfirm password are not the same";
}
else{

 	$firstname = stripslashes(mysqli_real_escape_string($conn,$_POST['fname']));
 	$lastname = stripslashes(mysqli_real_escape_string($conn,$_POST['lname']));
 	$username = stripslashes(mysqli_real_escape_string($conn,$_POST['user']));
 	$password = stripslashes(mysqli_real_escape_string($conn,$_POST['pass']));
 	$confirm = stripslashes(mysqli_real_escape_string($conn,$_POST['conf']));
 	$insert = @mysqli_query($conn, "INSERT INTO chat2 (fname, lname, Username, password) VALUES('$firstname', '$lastname', '$username', '$password')");
 	// WHAT VALUE ARE WE EXPECTING 

 	if ($insert){$comment =" Account successfully created";
 }
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
  <link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>
    <form action="index.php"  method="POST" class="form">
        
        <br>
        <input type="text" name="fname" placeholder="enter First Name" class="fname">
        <br><br>
  
        <input type="text" name="lname" placeholder="enter Last Name" class="lname">
        <br><br>
        
        <input type="text" name="user" placeholder="enter username" class="user">
        <br><br>
        <input type="password" name="pass" placeholder="enter your password" class="pass">
        <br><br>
        <input type="password" name="conf" placeholder="confirm your password" class="conf">
        <br><br>
        <input type="submit" name="register" class="register" value="Create Account">
        <br><br>
        <div style="color: green; font-weight: bold;">
        	<?php echo $comment; ?>
        	
        </div>
<a href="login.php" style="margin-left: -450px">Existing member? Login Here</a>
<!-- 
        form validation

        clientside validation
        server side validation


        each as advantage over the order 
        combination of server and client validation

        to deal with client side validation we need javascript
        
         -->



    </form>
</body>
</html>