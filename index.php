<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>index</title>
    <meta name="description" content="opis" />
    <meta name="keywords" content="slowa klucz" />
    <meta http-equiv="X-YA-Compatible" content="IE=edge,chrome=1" />

    <link rel="stylesheet" href="index.css"> <!-- CSS -->

</head>

<body>

    <?php
    
    // losowanie \\
    session_start();

    $db = new mysqli('localhost', 'root', '', 'angielski_slowka'); // Łączenie z bazą danych \\
    $table = "ang_19_09_2023";

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
    sort($id_pytanie); // Sprawdzenie czy są powtórzenia \\

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
    
    function tip() {
        $fstchar = mb_substr($popr_odp[$i], 0, 1);
        return $fstchar;
    }

    for ($i = 0; $i < $ilosc_pytan; $i++) {
    
        echo $i+1;
        echo '. ';

        print_r ($slowo[$i]); 
        echo "&nbsp";
        

        // Wyświetlanie pierwszej litery z popr_odp \\
        echo '<button onclick=" ">Podpowiedź</button>';

        echo "<br />";


        echo "<input type='text'"; 
        echo "name='odpowiedz$i'"; // Numer słówka
        echo "required autocomplete='off'/><br />"; // autocomplete='off' bez odpowiedzi
    }
    echo "<br /><input type='submit' value='Wyślij' />";
    echo "</form></div></center>";

// echo "<button type='button'>".$popr_odp[$i]."</button>";
// $fstchar = mb_substr($popr_odp[$i], 0, 1);
// echo $fstchar;


// Wybór tabeli na początku \\
// Wybór czy z ang-pl czy pl-ang \\
// Zrobić CSS \\
// Dodać przycisk podpowiedzi pokazujący pierwszą litere \\
// W wyniki.php niech wyswietla pierwsza litere z slowo i poprawne odpowiedzi z duzej \\
// github \\

// Code by Najdz3l & MrRembes \\
    ?>
</body>
</html>
