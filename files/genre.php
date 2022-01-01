<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/style02.css">
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
    <title> Genre</title>
</head>
<body>

<?php

$db = mysqli_connect("localhost", "root", "", "readersden");

if (!$db) {
  die("connection error".mysqli_connect_error());
} 
else{
    //echo "connection success";
}

$sql = "SELECT Distinct genre FROM book";

$result = mysqli_query($db, $sql);


?>
    
    <h1 class="head">Genre</h1>

    <?php
          if (mysqli_num_rows($result)>0) {

             while ($row= mysqli_fetch_assoc($result)) {
    ?>
    <div class="aut">
        
        <li><a href= <?php echo "genre_show.php?genre=" .$row['genre']?>><?php echo $row ['genre']; ?> </a></li>
        
      </div>

      <?php
  }
} else {
  echo "0 results";
}