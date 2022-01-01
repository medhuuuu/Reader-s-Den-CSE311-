<?php

$db= mysqli_connect("localhost", "root", "", "readersden");

if(!$db)
{
    die("connection error: " . mysqli_connect_error());
}
else
{
    //echo "connection succes" . "<br>";
}

    
    $user_email= $_POST["email"];
    $user_password= $_POST["pass"];

	session_start();
	

    if(!empty($user_email) && !empty($user_password))
	{
		
		$sql = "select * from sign_up where email = '$user_email'";
		$result = mysqli_query($db, $sql);

		if($result)
		{
			if($result && mysqli_num_rows($result) > 0)
			{

				$user_data = mysqli_fetch_assoc($result);
		
				if($user_data['password'] === $user_password)
				{
					$login=1;

					$_SESSION['u_email'] = $user_email;
					$_SESSION['login']= 1;
					header("Location: ../index.php");
					die;
				}
				else{
        			header("Location: sign-in.html");
				}
			}

		}
	}



?>