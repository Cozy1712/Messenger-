<?php
session_start();
include_once 'config.php';
if(isset($_POST['send'])){
	$user = $_SESSION['userid'];
	$msg = $_POST['msg'];
	header("location:../messenger/chat.php?error = pass1");

	if( !empty($msg))
	{
		echo "you";
		$sql = mysqli_query($conn, "INSERT INTO msg (name, msg) VALUES('$user', '$msg')");

	}
	else{
			echo "cant send empty message!";

	}

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/chat.css">
	<title>chat</title>
</head>
<body>
	<div class="wrapper">
		<div class="main">
			<h4 class="welcome">Welcome <?php
			if(isset($_SESSION['userid'])){
				$user = $_SESSION['userid'];
				echo "<p>".$user."</p>";
			}
			else{
				echo "<p>sign in</p>";
			}
			?>
			</h4>
			<p class="logout"><a class="exit" href="#">Exit chat</a></p>
		</div>
		<div class="chatbox">
			<?php
	  			$sql = mysqli_query($conn, "SELECT * FROM msg");
				while ($row = mysqli_fetch_assoc($sql)) {
				$user = $row["name"];
				$msg = $row["msg"];
				$date = $row["date"];
				echo "
			<div class='container'>
				<h1 class ='chatbox-h1'>"." $user"."</h1>
				<div class='container2'>
					<p class ='chatbox-p'>"."$msg"."</p>
					<p class ='chatbox-d'>"."$date"." </p>
				</div>
			</div>";
				}
				
			?>
			
		</div>
		<form action="chat.php" method="POST" name="message">
			<input type="text" name="msg" class="usermsg">
			<button type="submit" name="send" class="submitmsg">send</button>		
		</form>
	</div>
	<?php
	if(isset($_GET['logout'])){    
     
		//Simple exit message
		$logout_message = "<div class='msgln'><span class='left-info'>User <b class='user-name-left'>". $_SESSION['name'] ."</b> has left the chat session.</span><br></div>";
		file_put_contents("log.html", $logout_message, FILE_APPEND | LOCK_EX);
		 
		session_destroy();
		header("Location: login.php"); //Redirect the user
	}
	 
	if(isset($_POST['enter'])){
		if($_POST['name'] != ""){
			$_SESSION['name'] = stripslashes(htmlspecialchars($_POST['name']));
		}
		else{
			echo '<span class="error">Please type in a name</span>';
		}
	}
	?>
</body>
</html>