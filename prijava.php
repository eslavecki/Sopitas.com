<?php

    include 'connect.php';

    if (isset($_POST["Prijava"])) {
        $user = $_POST["korime"];
        $password = $_POST["zaporka"];
        $query = "SELECT korisnickoIme, lozinka FROM korisnici WHERE korisnickoIme = ?;"; 
        
        $upit = "SELECT Ime,Prezime FROM korisnici WHERE korisnickoIme = '$user'";
        $rezultat = mysqli_query($dbc, $upit) or die(mysqli_error($dbc));
        $red = mysqli_fetch_array($rezultat);

        $stmt = mysqli_stmt_init($dbc);

         if (mysqli_stmt_prepare($stmt, $query)) {
            mysqli_stmt_bind_param($stmt, 's', $user);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $username, $hash);
            mysqli_stmt_fetch($stmt);

            if (password_verify($password, $hash)) {
                $_SESSION["login"] = true; 
                $_SESSION["imePrezime"] = $red["Ime"]." ".$red["Prezime"];
                echo '<script> alert("Prijava uspješna") </script>';
                echo "<script> location.href='index.php'; </script>";
                } else {
                echo '<script> alert("Unijeli ste pogrešno korisničko ime ili lozinku.") </script>';
            }

            mysqli_stmt_close($stmt);
        }
    }
    else if(isset($_POST["Registracija"])){
        
    }
    mysqli_close($dbc);
?>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
    <meta http-equiv="Cache-control" content="no-cache">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="animate.css" type="text/css" rel="stylesheet" />
    <link href="prijava.css" type="text/css" rel="stylesheet" />
    <title>Sopitas | Prijava</title>
</head>
<body>


    <div class="prijava-kontenjer">
                <form action="" method="post">
                    <img src="img/prijava/avatar.png" width="64px" height="64px" />
                    <br>
                    <div class="animated fadeInUp">
                        <input type="text" placeholder="Korisničko ime" name="korime" required>  
                        <input type="password" placeholder="Zaporka" name="zaporka" required>
                        <input type="submit" name="Prijava" value="Prijava"> 
                    </div>
                </form>     
    </div>
    
</body>
</html>