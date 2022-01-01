<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/style02.css">
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
    <title> Publication</title>
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

$sql = "SELECT DISTINCT publication_name, publication_id from publication";

$result = mysqli_query($db, $sql);
 //$id= $data ['publication_id'];
 //echo $id;

?>
    
    <h1 class="head">Publication</h1>

    <?php
          if (mysqli_num_rows($result)>0) {

             while ($row= mysqli_fetch_assoc($result))
             {
               //print_r($row);
    ?>
    <div class="aut">
        
        <li><a href=<?php echo"publication_show.php?publication_id=".$row['publication_id'] ?>><?php echo $row ['publication_name']; ?> </a> </li>  
        
      </div>

      <?php
  }
} else {
  echo "0 results";
}

