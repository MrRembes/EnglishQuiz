<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Quiz termin 19.09.23</title>
    <meta name="description" content="opis" />
    <meta name="keywords" content="slowa klucz" />
    <meta http-equiv="X-YA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Czcionki Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css"> <!-- CSS -->

</head>

<nav>
<!-- Dodać button powrót -->
    <form action="index.php">
        <input type="submit" value="Powrót">
    </form>

</nav>
<div style='clear:both'></div>

<body>
<div id = "wrapper">
    <?php
    
    // losowanie \\
    session_start();

    $db = new mysqli('localhost', 'root', '', 'angielski_slowka'); // Łączenie z bazą danych \\
    $table = "ang_19_10_2023";

    $q = "SELECT count(*) FROM $table"; // Tabela z której bierze dane \\
    $result = $db->query($q);
    $row = $result->fetch_row();
    $count = $row[0];

    $id_pytanie = array(
            rand(1, $count) // Losowanie słówka \\
    );

    $ilosc_pytan = 15;

    // Losowanie i dopisanie do arraya liczb bez powtórzeń \\
    for($i = 0; $i < $ilosc_pytan-1; $i++) { 

        $rand = rand(1, $count);
        $break = false;

        for($j = 0; $j <= $i; $j++) {
            if($id_pytanie[$j] == $rand) {
            $i--;
            $break = true;
            }
        }
        if(!$break) {
            array_push ($id_pytanie, $rand);
        }
        
    }
    // Sprawdzenie czy są powtórzenia \\

    $slowo = array();
    $popr_odp = array();
    $popr_odp_2 = array();

    //1
    $ids = join("','", $id_pytanie); // join(separator, array) \\
    $q = "SELECT * FROM $table WHERE id IN ('$ids')"; // Tabela z której bierze dane \\
    $result = $db->query($q);

    while ($row = $result->fetch_array()) {
        array_push ($slowo, $row[1]);
        array_push ($popr_odp, $row[2]);
        array_push ($popr_odp_2, $row[3]);
    }

    for($i=0; $i < $ilosc_pytan; $i++) {
        $popr_odp[$i] = strtolower($popr_odp[$i]);
        $popr_odp_2[$i] = strtolower($popr_odp_2[$i]);
    }

    ?>
<?php 
    //formulash \\
    $angpl = true;
    $_SESSION['slowo'] = $slowo;
    $_SESSION['popr_odp'] = $popr_odp;
    $_SESSION['popr_odp2'] = $popr_odp_2;
    $_SESSION['ilosc_pytan'] = $ilosc_pytan;
    $_SESSION['angpl'] = $angpl;
    echo "<div id = 'pytania'>";
    echo '<form action="wyniki.php" method="post">';
    echo "<h2>Przetłumacz na polski: </h2>";
    
    
    // function tip() {
    //     $fstchar = $popr_odp[$i].substr(0, 1);
    //     return $fstchar;
    // }

    for ($i = 0; $i < $ilosc_pytan; $i++) {
    
        echo $i+1;
        echo '. ';

        print_r ($slowo[$i]); 
        echo "&nbsp";
        

        // Wyświetlanie pierwszej litery z popr_odp \\
        // echo '<button onclick=" ">Podpowiedź</button>';

        echo "<br />";


        echo "<input type='text'"; 
        echo "name='odpowiedz$i'"; // Numer słówka
        echo "maxlenght = '50'";
        echo "required autocomplete='off'/><br />"; // autocomplete='off' bez odpowiedzi
    }
    echo "<br /><input type='submit' value='Wyślij' />";
    echo "</form></div></center>";

// echo "<button type='button'>".$popr_odp[$i]."</button>";
// $fstchar = $popr_odp[$i].substr(0, 1);
// echo $fstchar;
// mam plan mniej więcej xD

// Dodać przycisk podpowiedzi pokazujący pierwszą litere \\

// Code by Najdz3l & MrRembes \\
    ?>
    
<div style='clear:both'></div>
</div>

<footer>
    <a> Powered by MrRembes and Najdz3l</a>
</footer>

</body>
</html>
