<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="../css/order.css">
    <title> ORDER</title>
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

$getid= $_GET['ISBN'];
$sql= "SELECT  b.title, b.genre, b.author_name, p.publication_name, b.price from book AS b, publication AS p WHERE b.publication_id= p.publication_id AND b.ISBN= '$getid'";

$result = mysqli_query($db, $sql);

// if(mysqli_num_rows($result)>0)
// {
while ($row= mysqli_fetch_assoc($result))
{

  ?>
<div class="row">
  <div class="col-sm-6 " >
    <div class="card box">
      <div class="card-body">
        <h5 class="card-title tmk "><?php echo $row['title'];?></h5>
        <p class="card-text amk"> <?php echo $row['author_name']; ?> </p>
        <p class="card-text amk"> <?php echo $row['genre']; ?> </p>
        <p class="card-text amk"> <?php echo $row['publication_name']; ?> </p>
        <p class="card-text amk"> <?php echo "Price"; echo " "; echo $row['price']; ?> </p>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card box ">
      <div class="card-body ">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary cad">Confirm Order</a>
      </div>
    </div>
  </div>
</div>
<?php
}
            
//   } else {
//     echo "0 results";
//   }
  
  ?>
 
  </body>
  </html>