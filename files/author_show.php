<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style02.css">
    <title> Author Info</title>
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


$getid= $_GET['author_name'];
$sql = "SELECT title, price, genre from book WHERE author_name like '$getid%'";


$result = mysqli_query($db, $sql);

// if(mysqli_num_rows($result)>0)
// {
while ($row= mysqli_fetch_assoc($result))
             {
              ?>
              
                  
              <div class="card books">
        <div class="card-body">
          <h5 class=" card-text cad"> <?php echo $row['title']; ?> </h5>
          <p class="card-text "> <?php echo $row['genre']; ?> </p>
          <p class="card-text   "> <?php echo "Price"; echo " "; echo $row['price']; ?> </p>
          <!-- <a href="#" class="button">Order Now</a> -->
          <button class="button">Order Now</button>
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