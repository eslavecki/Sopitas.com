<?php
include 'connect.php';
define('UPLPATH', 'slike-clanci/');
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
<title>Sopitas | Početna</title>
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

            <div class="sekcija-kategorija">
                    <span style = "width: 10%;"><h2 class="animated fadeInUp">Muzika</h2><hr></span>
                    <br><br>
                    <center>
                        <div class="sekcija-kategorija-poredak">
                            <?php
                            $query = "SELECT * FROM novosti WHERE arhiva=0 AND kategorija='Muzika' ORDER BY id DESC LIMIT 3";
                            $result = mysqli_query($dbc, $query);
                            while($row = mysqli_fetch_array($result)){
                            echo '<a class = "clanak-link" href="citaj-clanak.php?id='.$row['id'].'">';
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="55%" height="30%" alt="Slika ne postoji" />';
                                echo '<br><br>';
                                echo '<h3>';
                                echo $row['naslov'];
                                echo '</h3>';
                                echo '<br>';
                                echo '<br>';
                                echo '<p class="animated fadeInUp">OBJAVLJENO: ';
                                echo $row['datum'];
                                echo '</p>';
                            echo '</div>';
                            echo '</a>';
                            }
                            ?>
                        </div>
            </div>

                <div class="sekcije-razmak">
                </div>

                <div class="sekcija-kategorija">
                    <h2 class="animated fadeInUp">Sport</h2><hr>
                    <br><br>
                    <center>
                        <div class="sekcija-kategorija-poredak">
                            <?php
                            $query = "SELECT * FROM novosti WHERE arhiva=0 AND kategorija='Sport' ORDER BY id DESC LIMIT 3";
                            $result = mysqli_query($dbc, $query);
                            while($row = mysqli_fetch_array($result)){
                            echo '<a class = "clanak-link" href="citaj-clanak.php?id='.$row['id'].'">';
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="55%" height="30%" alt="Slika ne postoji" />';
                                echo '<br><br>';
                                echo '<h3>';
                                echo $row['naslov'];
                                echo '</h3>';
                                echo '<br>';
                                echo '<br>';
                                echo '<span class="animated fadeInUp">OBJAVLJENO: ';
                                echo $row['datum'];
                                echo '</span>';
                            echo '</div>';
                            echo '</a>';
                            }
                            ?>
                        </div>
                    <br>
                    </center>
                
                </div>
                
            </div>     
        </div>
    </article>

<footer>

</footer>
</body>

</html>


