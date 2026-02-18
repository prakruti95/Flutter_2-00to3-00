<?php

    include 'connect.php';

    $id = $_POST["id"];
 

    $sql = "delete from products where id='$id'";
   
     if(mysqli_query($con,$sql))
     {
        echo "Deleted Successfully";
     }
     else
     {
        echo "Error deleting record: " . mysqli_error($con);
     }
    
?>