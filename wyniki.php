<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>wyniki</title>
    <meta name="description" content="opis" />
    <meta name="keywords" content="slowa klucz" />
    <meta http-equiv="X-YA-Compatible" content="IE=edge,chrome=1" />

    <link rel="stylesheet" href="style.css">
</head>

<body>
    
<div class = 'wynik'>
 <h1> Oto twoje wyniki </h1>
    <?php 

    session_start();

    $slowo = $_SESSION['slowo'];
    $popr_odp = $_SESSION['popr_odp'] ;
    $popr_odp_2 = $_SESSION['popr_odp2'];
    $ilosc_pytan = $_SESSION['ilosc_pytan'];

    $odpowiedzi = array();

    for ($i = 0; $i < $ilosc_pytan; $i++) {
        array_push ($odpowiedzi, $_POST["odpowiedz$i"]);
        
    }

// Zmiena stringa na małe litery \\
    for($i=0; $i < $ilosc_pytan; $i++) {
        $slowo[$i] = strtolower($slowo[$i]);
        $popr_odp[$i] = strtolower($popr_odp[$i]);
        $popr_odp_2[$i] = strtolower($popr_odp_2[$i]);
        $odpowiedzi[$i] = strtolower($odpowiedzi[$i]);
    }

// Zliczanie uzyskanych puntków \\
    $points = 0;

    for ($i = 0; $i < $ilosc_pytan; $i++) {
        if (($odpowiedzi[$i] == $popr_odp[$i]) || ($odpowiedzi[$i] == $popr_odp_2[$i])) {
        $points++;
        echo $slowo[$i].": "."<span style = 'color:green'>".$odpowiedzi[$i]."</span><br />";
        }
        else {
            echo $slowo[$i].": "."<span style = 'color:red'>".$odpowiedzi[$i]."</span>, ".$popr_odp[$i].", ".$popr_odp_2[$i]."<br />";
        }
    }

    echo "Uzyskane punkty: ".$points;

// Powrót na główną \\
    echo '<form action="index.php" method="post">';

    echo "<input type='submit' value='Powrót' />";
    
    echo "</form>";

// Code by Najdz3l & MrRembes \\
    ?>
    </div>
</body>
</html>

