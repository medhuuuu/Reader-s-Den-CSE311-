<?php

$db= mysqli_connect("localhost", "root", "", "readersden");

if(!$db)
{
    die("connection error: " . mysqli_connect_error());
}
else
{
    echo "connection succes" . "<br>";
}

$fname= $_POST["first"];
$lname= $_POST["last"];
$email= $_POST["email"];
$phn_no= $_POST["phn"];
$address= $_POST["adres-box"];
$password= $_POST["pass"];
//$conpass= $_POST["con_pass"];





$sql= "INSERT INTO sign_up(first_name, last_name, email, phone_no, address, password ) VALUES( '$fname', '$lname', '$email', $phn_no, '$address', '$password' )";

 if(mysqli_query($db, $sql))
 {
    // echo "info added";
    header("LOCATION: sign-in.html");
 }
 else{
     echo "there is an error: " . mysqli_error($db);
 }




?>