<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@300&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/books.css">
    <title>Offer Books</title>
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
</head>
<body>

<?php

$db = mysqli_connect("localhost", "root", "", "readersden");

if (!$db) {
  die("connection error".mysqli_connect_error());
} 

$sql = "SELECT ISBN, title, author_name, genre, price FROM book WHERE offer='yes' ORDER BY title ASC";

$result = mysqli_query($db, $sql);


?>
    
    <h1 class="text-center"> Offered Books </h1>

    <?php
          if (mysqli_num_rows($result)>0) {
          while ($row= mysqli_fetch_assoc($result)) {
    ?>
    <div class="card books">
        <div class="card-body">
          <h5 class="card-title" style=" color: rgb(189, 160, 107);"> <?php echo $row['title']; ?> </h5>
          <p class="card-text"> <?php echo $row['author_name']; ?> </p>
          <p class="card-text"> <?php echo $row['genre']; ?> </p>
          <p class="card-text"> <?php echo "Tk-".$row['price']; ?> </p>
          <a href= <?php echo "order.php?ISBN=" .$row['ISBN']?> class="button">Order Now</a>
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