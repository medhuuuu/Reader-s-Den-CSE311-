<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <link rel="shortcut icon" href="../images/icon.PNG" type="image/x-icon">
</head>
<body>


    <h1>Order History</h1>
    <table border="1">
        <tr>
            <th>Book Title</th>
            <th>Author</th>
            <th>Price</th>
        </tr>

        <?php


        $dbLink = mysqli_connect("localhost", "root", "", "readersden");

        if (!$dbLink) {
            die("connection error".mysqli_connect_error());
        } 
        else {
            //echo "Connection successful.<br>";
        }

        session_start();
        $email= $_SESSION['u_email'];

        

        $sql = "SELECT Distinct title, author_name, price FROM order_info WHERE email='$email'";

        $result = mysqli_query($dbLink, $sql);

        if (mysqli_num_rows($result)>0) {
            while ($row= mysqli_fetch_assoc($result)) {
            ?>
                <tr>
                    <td><?php echo $row['title']; ?></td>
                    <td><?php echo $row['author_name']; ?></td>
                    <td><?php echo $row['price']; ?></td>
                </tr>
            <?php
            }
        } else {
            echo "0 results";
        }


        ?>


    </table>
</body>
</html>