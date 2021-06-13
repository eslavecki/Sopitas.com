<?php
include 'connect.php';
define('UPLPATH', 'slike-clanci/');
$id = $_GET['id'];
$query = "SELECT * FROM novosti WHERE id='$id'";
$result = mysqli_query($dbc, $query) or die(mysqli_error($dbc));

$rezultat = mysqli_query($dbc, $query) or die(mysqli_error($dbc));
$red = mysqli_fetch_array($rezultat);
$print = $red['naslov'];
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-control" content="no-cache">
<link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link href="animate.css" type="text/css" rel="stylesheet" />
<link href="style.css" type="text/css" rel="stylesheet" />
<?php echo '<title>';
echo "Sopitas | ";
echo $print;
echo '</title>'; ?>
</head>

<body>
<?php
include_once("header.php");
?>
    <div class="header-razmak">

    </div>
    <article>
        <div class="wrapper">
            
            <div class="sekcije animated fadeIn">
                
                <div class="sekcije-razmak">
                </div>

                <div class="sekcija-kategorija">
                <?php
                while($row = mysqli_fetch_array($result)){
                $id = $row['id'];
                    echo '<h2 class="animated fadeInUp">';
                    echo $row['kategorija'];
                    echo '</h2>';
                    echo '<br><br>';
                    echo '<h1 class="animated fadeInUp">';
                    echo $row['naslov'];
                    echo '</h1>';
                    echo '<br>';
                    echo '<p class="animated fadeInUp">AUTOR: ';
                    echo $row['autor'];
                    echo '</p>';
                    echo '<p class="animated fadeInUp">OBJAVLJENO: ';
                    echo $row['datum'];
                    echo '</p>';
                    echo '<br>';
                    echo '<div class="sekcija-kategorija-poredak">';
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="100%" height="100%" />';
                                echo '<br><br>';
                                echo '<br>';
                                echo '<p>';
                                echo $row['sazetak'];
                                echo '</p>';
                                echo '<br><br>';
                                echo '<p>';
                                echo $row['tekst'];
                                echo '</p>';
                                echo '<br>';
                            echo '</div>';
                    }
                        
                    echo '</div>';
                    ?>

                    <div class="sekcije-razmak">
                    </div>
            </div>
    </article>
<footer>    
</footer>
</body>

</html>
