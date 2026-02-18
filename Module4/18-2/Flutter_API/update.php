<?php

    include 'connect.php';

    $id = $_POST["id"];
    $pname = $_POST['product_name'];
    $pprice = $_POST['product_price'];
    $pdes = $_POST['product_description'];

    $sql = "update products set product_name='$pname',product_price='$pprice',product_description='$pdes' where id='$id'";
   
     if(mysqli_query($con,$sql))
     {
        echo "Updated Successfully";
     }
     else
     {
        echo "Error updating record: " . mysqli_error($con);
     }
    
?>