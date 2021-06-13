<?php

    include 'connect.php';

    if (isset($_POST["Registracija"])) {

        

        $name = $_POST["ime"];
        $surname = $_POST["prezime"];
        $user = $_POST["korime"];
        $password = password_hash($_POST["zaporka"], PASSWORD_BCRYPT);
        
        $upit = "INSERT INTO korisnici (dozvola, Ime, Prezime, korisnickoIme, lozinka) 
                VALUES (1,'$name', '$surname', '$user', '$password');";
                echo "tu sam";

                $result = mysqli_query($dbc, $upit) or die(mysqli_error($dbc));            
                if ($result === true){
                    echo '<script> alert("Registracija uspješna") </script>';
                    echo "<script> location.href='prijava.php'; </script>";
                }
        
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
    <title>Sopitas | Registracija</title>
</head>
<body>


    <div class="prijava-kontenjer">
                <form action="" method="post">
                    <img src="img/prijava/avatar.png" width="64px" height="64px" />
                    <br>
                    <div class="animated fadeInUp">
                        <input type="text" placeholder="Ime" name="ime" required>  
                        <input type="text" placeholder="Prezime" name="prezime" required>
                        <input type="text" placeholder="Korisničko ime" name="korime" required>  
                        <input type="password" placeholder="Zaporka" name="zaporka" required>
                        <input type="submit" name="Registracija" value="Registracija"> 
                    </div>
                </form>     
    </div>
    
</body>
</html>