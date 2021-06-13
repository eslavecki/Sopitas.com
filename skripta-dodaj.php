<?php
include 'connect.php';

if(isset($_POST['prihvati'])){
    $picture = $_FILES['pphoto']['name'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $date = date('d.m.Y');
    $author = $_SESSION["imePrezime"];

    if(isset($_POST['acrhive'])){
        $archive = 1;
    }
    else{
        $archive = 0;
    }

    $target_dir = 'slike-clanci/'.$picture;
    move_uploaded_file($_FILES['pphoto']['tmp_name'], $target_dir);

    $query = "INSERT INTO novosti(datum, naslov, sazetak, tekst, slika, kategorija, arhiva, autor)
    VALUES ('$date', '$title', '$about', '$content', '$picture', '$category', '$archive', '$author')";

    $result = mysqli_query($dbc, $query) or die('Error querying database.');
    mysqli_close($dbc);

    header("Location: administracija.php");
    die();
}
?>