<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style02.css">
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
    <title> Publication Info</title>
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


$getid= $_GET['publication_id'];
$sql = "SELECT ISBN, title, price, genre, author_name from book WHERE publication_id=$getid";


$result = mysqli_query($db, $sql);

if(mysqli_num_rows($result)>0)
{
while ($row= mysqli_fetch_assoc($result))
             {
              ?>
              
                  
              <div class="card books">
        <div class="card-body">
          <h5 class=" card-text cad"> <?php echo $row['title']; ?> </h5>
          <p class="card-text "> <?php echo $row['genre']; ?> </p>
          <p class="card-text "> <?php echo $row['author_name']; ?> </p>
          <p class="card-text   "> <?php echo "Price"; echo " "; echo $row['price']; ?> </p>
          <!-- <a href="#" class="button">Order Now</a> -->
          <a href=<?php echo"order.php?ISBN=" .$row['ISBN']?>><button class="button">Order Now</button></a>
        </div>
      </div>
                  
                
          
                <?php
             }
            
          } else {
            echo "0 results";
          }
          
          ?>
         
          </body>
          </html>