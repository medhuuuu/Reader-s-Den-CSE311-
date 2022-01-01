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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="../css/order.css">
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
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
$sql= "SELECT b.ISBN, b.title, b.genre, b.author_name, p.publication_name, b.price from book AS b, publication AS p WHERE b.publication_id= p.publication_id AND b.ISBN= '$getid'";

$result = mysqli_query($db, $sql);

session_start();
$email = $_SESSION['u_email'];

$sql2="SELECT * FROM sign_up WHERE email='$email'";
$result2=  mysqli_query($db, $sql2);

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

  <?php 
  
  while ($row2= mysqli_fetch_assoc($result2))
{


  ?>
  <div class="col-sm-6">
    <div class="card box ">
      <div class="card-body ">
        <h5 class="card-title"> <?php echo $row2['first_name'];?> </h5>
        <p class="card-text"> <?php echo "Email: ". $row2['email'];?> </p>
        <p class="card-text"> <?php echo "Phone no: ". $row2['phone_no'];?> </p>
        <p class="card-text"> <?php echo "Address: ". $row2['address'];?> </p>
        <a href="#" class="btn btn-primary cad" onclick="handleClick()">Confirm Order</a>
      </div>
    </div>
  </div>
</div>

<?php

 $mail = $row2['email'];
 $phone = $row2['phone_no'];
 $address = $row2['address'];
 $price =  $row['price'];
 $title = $row['title'];
 $author = $row['author_name'];
?>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
  function handleClick(){
    swal('Order Confirm', 'Thank you', 'success');
    <?php
       $sql3= "INSERT INTO order_info (email, phone_no, address, price, title, author_name) VALUES ('$mail', $phone, '$address', $price, '$title', '$author')";

       if (mysqli_query($db, $sql3)) {
        //echo "Information added<br>";
      }
    ?>

    
  }
</script>

<?php

  }
}
  
?>



  </body>
  </html>