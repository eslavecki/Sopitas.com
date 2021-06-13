<?php
include 'connect.php';


$id = $_GET['id'];
$query = "DELETE FROM novosti WHERE id='$id'";
$result = mysqli_query($dbc, $query) or die(mysqli_error($dbc));

    header("Location: administracija.php");
    die();

?>