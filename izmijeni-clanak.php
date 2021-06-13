<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
    <meta http-equiv="Cache-control" content="no-cache">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="animate.css" type="text/css" rel="stylesheet" />
    <link href="administracija.css" type="text/css" rel="stylesheet" />
    <title>Le Monde | Izmijeni članak</title>
</head>
<?php
include_once("header.php");
?>

    <div class="header-razmak">

</div>

<?php
    $id = $_GET['id'];
    include 'connect.php';
    define('UPLPATH', 'slike-clanci/');

    $query = "SELECT * FROM novosti WHERE id='$id'";
    $result = mysqli_query($dbc, $query);
    $clanak = mysqli_fetch_array($result);

echo '<article>
    <div class="wrapper">
        
        <div class="sekcije animated fadeIn">
            
            <div class="sekcije-razmak">
                <hr class="sekcije-hr">
            </div>
        <center>
        <form enctype="multipart/form-data" action="" method="POST">
		<div class="form-item">
			<label for="title">Naslov vijesti</label>
			<div class="form-field">
				<input type="text" name="title" value="'.$clanak['naslov'].'">
			</div>
        </div>

		<div>
			<label for="about">Kratki sadržaj vijesti (do 150 znakova)</label>
			<div class="form-field">
				<textarea name="about" id="" cols="30" rows="10">'.$clanak['sazetak'].'</textarea>
			</div>
		</div>

		<div class="form-item">
			<label for="content">Sadržaj vijesti</label>
			<div class="form-field">
				<textarea name="content" id="" cols="30" rows="10">'.$clanak['tekst'].'</textarea>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label for="pphoto">Slika</label>
			<div class="form-field">
                <input type="file" accept="image/jpeg, image/gif" class="input-text" value="'.UPLPATH.$clanak['slika'].'" name="pphoto"/>
                <br>
                <img src="'.UPLPATH.$clanak['slika'].'" width=150px>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label for="category">Kategorija vijesti</label>
			<div class="form-field">
				<select name="category" id="" value="'.$clanak['kategorija'].'">
					<option value="Muzika">Muzika</option>
					<option value="Sport">Sport</option>
				</select>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label>Spremiti u arhivu:
				<div class="form-field">';
                if($clanak['arhiva'] == 0){
                    echo '<input type="checkbox" name="archive" id="archive" value="1"/>';
                }
                else{
                    echo '<input type="checkbox" name="archive" id="archive" value="2" checked/>';
                }
				echo '</div>
			</label>
		</div>

        <div class="form-item">
			<input type="submit" value="Poništi" name="ponisti"> 
			<input type="submit" value="Prihvati" name="prihvati">
        </div>
        <br>
	</form>
    </center>
    <div class="sekcije-razmak">
                <hr class="sekcije-hr">
            </div>
        </div>
    </div>
    </article>';
    ?>

<footer>
</footer>
</body>
</html>

<?php

if(isset($_POST['prihvati'])){
    $picture = $_FILES['pphoto']['name'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $archive = $_POST['archive'];
    $target_dir = 'slike-clanci/'.$picture;
    

    if($picture != ""){
        move_uploaded_file($_FILES['pphoto']['tmp_name'], $target_dir);
        $query = "UPDATE novosti SET naslov='$title', sazetak='$about', tekst='$content',
        slika='$picture', kategorija='$category', arhiva='$archive' WHERE id=$id";}
    
    else{
        $query = "UPDATE novosti SET naslov='$title', sazetak='$about', tekst='$content',
        kategorija='$category', arhiva='$archive' WHERE id=$id";
    }
    
    
    $result = mysqli_query($dbc, $query);

    echo "<script> location.href='administracija.php'; </script>";
    exit;
}
else if($_POST['ponisti']){
    echo "<script> location.href='administracija.php'; </script>";
    exit;
}


?>
