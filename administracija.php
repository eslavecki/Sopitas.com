<?php
include 'connect.php';
define('UPLPATH', 'slike-clanci/');

if(!isset($_SESSION["login"])){
    header("Location: prijava.php");
    die();
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
    <meta http-equiv="Cache-control" content="no-cache">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="animate.css" type="text/css" rel="stylesheet" />
    <link href="administracija.css" type="text/css" rel="stylesheet" />
    <title>Sopitas | Administracija</title>
</head>
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
                <a href="dodaj-clanak.php"><button class="animated fadeInUp gumb">Dodaj novi članak</button></a>
                <br><br><br><br><br>
                <div class="sekcija-kategorija-poredak animated fadeIn">
                <table style="width:100%;">
                <tr>
                        <th>Naslov</th>
                        <th>Sadržaj</th>
                        <th>Slika</th>
                        <th>Arhiva</th>
                        <th>Akcija</th>
                    </tr>
                    <?php
                    $query = "SELECT * FROM novosti ORDER BY id DESC";
                    $result = mysqli_query($dbc, $query);
                    while($row = mysqli_fetch_array($result)){
                    echo '<tr class="centar">';
                        echo '<td>';
                        echo '<b>';
                        echo substr($row['naslov'], 0, 60) . '...';
                        echo '</b>';
                        echo '</td>';
                        echo '<td>';
                        echo substr($row['sazetak'], 0, 60) . '...';
                        echo '</td>';
                        echo '<td>';
                        echo '<img src="'.UPLPATH.$row['slika'].'" width="100px" height="100px" alt="Slika ne postoji" />';
                        echo '</td>';
                        echo '<td>';
                        if($row['arhiva'] == 0)
                        {
                            echo '<p style="color: green">';
                            echo 'NE';
                            echo '</p>';
                        }
                        else
                        {
                            echo '<p style="color: red">';
                            echo 'DA';
                            echo '</p>';
                        }
                        echo '</td>';
                        echo '<center>';
                        echo '<td><a href="citaj-clanak.php?id='.$row['id'].'"<button class="gumb">Pregledaj</button></a> <a href="izmijeni-clanak.php?id='.$row['id'].'"<button class="gumb">Izmijeni</button></a> <a href="izbrisi-clanak.php?id='.$row['id'].'"<button class="gumb">Izbriši</button></a> </td>';
                        echo '</center>';
                    echo '</tr>';
                    }
                    ?>
                    </table>
                </div>
            </div>

        <div class="sekcije-razmak">
        </div>

        </div>
    </div>

    <footer>
    
</footer>
</body>
</html>