<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Readers Den</title>
    <link rel="shortcut icon" href="images/icon.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@300&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header class="container">

<!----------------------------------------------------- navber ----------------------------------------------------->

<?php 

error_reporting(0);
session_start();

?>


      <nav class="navbar navbar-expand-lg navbar-light mb-2 bgg">
        <div class="container-fluid">
          
          <a class="navbar-brand" href="#">
            <img class="w-25 nav-img" src="images/logo.PNG" alt="">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item p-2 ">
                <a class="nav-link active nav-option" aria-current="page" href="">Home</a>
              </li>
              
              <?php 
 
              if (!isset($_SESSION['login']))
                {
                  $login = $_SESSION['login'];
                }
                else{
                  $login = 0;
                }
              if ($_SESSION['login'] != 1) {
                ?>
                <li class="nav-item p-2 ">
                  <a class="nav-link active nav-option" id="sign_up" href="files/sign-up.html">Sign Up</a>
                </li>
                <li class="nav-item p-2 ">
                  <a class="nav-link active nav-option" id="sign_in" href="files/sign-in.html">Sign In</a>
                </li>

                <?php
              } else{

                ?>
                <li class="nav-item p-2 ">
                  <a class="nav-link active nav-option" id="email" href="files/orderhistory.php"> <?php echo $_SESSION['u_email']; ?> </a>
                </li>
                <?php
              }
              

              ?>

              
            </ul>
            
            <div class="d-flex">
              <form class="d-flex" action="files/search.php" method="post">
                <input class="form-control me-2 " id="search" name="search" type="search" placeholder="Search" aria-label="Search">
                <button class="btn inp" type="submit">Search</button>
              </form>
            </div>
          </div>
        </div>
      </nav>

<!---------------------------------------------------- Filter bar ---------------------------------------------------->      
          <div class="d-flex gap-3 align-items-center justify-content-center mb-1">
            <button type="button" class="btn homie"><a class="nav-link active" href="files/books.php">Books</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/author.php">Author</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/publisher.php">Publisher</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/genre.php">Genre</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/Pdf.php">Pdf</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/used.php">Used</a></button>
            <button type="button" class="btn homie"><a class="nav-link active" href="files/offer.php">Offer</a></button>

          </div>


<!---------------------------------------------------- Slides ---------------------------------------------------->
          <div id="carouselExampleControls" class="carousel slide navig" data-bs-ride="carousel mb-3">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row d-flex align-items-center p-5">
                    <div class="col-md-7 mt-5 ">
                      <h1 >WELCOME TO </h1>
                      <h2> <span class="style= text-success"> READERS DEN </span> </h2>
                    </div>
                    <div class="col-md-5">
                        <img src="images/book1.PNG" class="d-block w-100" alt="...">
                    </div>
                </div>
              </div>
              <div class="carousel-item">
                    <div class="row d-flex align-items-center p-5">
                        <div class="col-md-7 mt-5">
                          <h2> Get Your Favourite Books </h2>
                          <h4> AT Very Limited Price</h4>
                        </div>
                        <div class="col-md-5">
                            <img src="images/book2.png" class="d-block w-100" alt="...">
                        </div>
                    </div>
              </div>
              <div class="carousel-item">
                <div class="row d-flex align-items-center p-5">
                    <div class="col-md-7">
                      <h2>
                        Get 20% Offer!
                      </h2>
                      <p>Pdf version are also available</p>
                      <p class="d-flex align-items-end"> *Selected Items</p>
                    </div>
                    <div class="col-md-5">
                        <img src="images/book4.PNG" class="d-block w-100" alt="...">
                    </div>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>


<!---------------------------------------------------- Best seller ---------------------------------------------------->         
            <section class="mt-5">
              <div>
                <h3 class="heading-h3"><a class="nav-link active" href="files/bestSeller.php">BEST SELLER</a></h3>
              </div>
            </section>

            <div class="row row-cols-1 row-cols-md-6 g-4 mt-3" style="width: 70rem;">
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/byomkesh.jpg" class="card-img-top " style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Byomkesh Bakhshi</h6>
                    <p class="card-text"> TK-350</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card " style="height: 310px;">
                  <img src="images/devi.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Devi</h6>
                    <p class="card-text">TK-200</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/misir ali.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Misir Ali Series</h6>
                    <p class="card-text"> TK-550</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/hercule poirot.jpg" class="card-img-top"  style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Murder On the ORrient Express</h6>
                    <p class="card-text">TK-700</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/death nile.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Death On the Nile</h6>
                    <p class="card-text">TK-650</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/mebefore.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Me Before You</h6>
                    <p class="card-text">TK-320</p>
                  </div>
                </div>
              </div>
            </div>


<!---------------------------------------------------- New Arrival ---------------------------------------------------->
            <div class=" mt-5">
              <h3 class="heading-h3"><a class="nav-link active" href="files/latest.php"> NEW ARRIVAL!</a></h3>
            </div>

            <div class="row row-cols-1 row-cols-md-6 g-4 mt-3 " style="width: 70rem;">
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/golden gun.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Golden Gun</h6>
                    <p class="card-text"> TK-1275</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/the age of miracle.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">The Age of Miracle</h6>
                    <p class="card-text">TK-1100</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/jamesbond.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Anthology</h6>
                    <p class="card-text">TK-700</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/window.jpeg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Woman in the Window</h6>
                    <p class="card-text">TK-550</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/habit.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title"> 7 Habit of Effective People</h6>
                    <p class="card-text">TK-850</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/chotacchu.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title"> Tuntuni o Chotacchu</h6>
                    <p class="card-text"> TK-220</p>
                  </div>
                </div>
              </div>
            </div>


<!---------------------------------------------------- Authors ---------------------------------------------------->
            <div class="mt-4">
              <h3 class="heading-h3"><a class="nav-link active" href="files/author.php"> Authors</a></h3>
            </div>

            <div class="row row-cols-1 row-cols-md-6 g-4 mt-3 " style="width: 70rem;">
              <div class="col">
                <div class="card"style="height: 310px;">
                  <img src="images/ian.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Ian Fleming</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/jk.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">J.K Rowling</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/agatha.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title"> Agatha Cristie</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/1447945482_7.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title">Humayun Ahmed</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/sattya.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title"> Sattyajit Roy</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card" style="height: 310px;">
                  <img src="images/zafor.jpg" class="card-img-top" style="height: 215px;" alt="...">
                  <div class="card-body">
                    <h6 class="card-title"> Dr. Zafor Iqbal</h6>
                    <p class="card-text"></p>
                  </div>
                </div>
              </div>
            </div>

<!---------------------------------------------------- Contact part ---------------------------------------------------->            
            <div class="d-flex align-items-center justify-content-center  mt-3" style=" height:200px; background-color: #FDF5EA">
              <div>
                <h3>LETS STAY WITH TOUCH</h3>
                <i>email: readers.den@gmail.com</i><br><br>
                <P>Comments If you have any issue</P>
                <input type="text" placeholder="Search">
              </div>
            </div>
         
          

    </header>


<!---------------------------------------------------- Footer ---------------------------------------------------->
    <footer class="d-flex align-items-center justify-content-center mt-3 footer-part">
      <small>@2021 All rights reserved.</small>
    </footer>



<!---------------------------------------------------- Javascript link ---------------------------------------------------->    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>