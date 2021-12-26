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

    if(!empty($user_email) && !empty($user_password))
		{

			
			$sql = "select * from sign_up where email = '$user_email' limit 1";
			$result = mysqli_query($db, $sql);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);
					
					if($user_data['password'] === $user_password)
					{

						
						header("Location: ../index.html");
						die;
					}
				}
			}
			
			//echo "wrong email or password";
            header("Location: sign-in.html");
		}else
		{
			//echo "wrong username or password";
            
            
		}



?>