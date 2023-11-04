<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Wyniki</title>
    <meta name="description" content="opis" />
    <meta name="keywords" content="slowa klucz" />
    <meta http-equiv="X-YA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Czcionki Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
</head>

<body>
<div id = "wrapper">
    <div id = 'wynik'>
        <h1> Oto twoje wyniki </h1>
            <table>
                <tr>
                    <th>Słowo</th>
                    <th>Twoja Odpowiedź</th>
                    <th>Poprawna Odpowiedź</th>
                </tr>
        <?php 

        session_start();

        $slowo = $_SESSION['slowo'];
        $popr_odp = $_SESSION['popr_odp'] ;
        $popr_odp_2 = $_SESSION['popr_odp2'];
        $ilosc_pytan = $_SESSION['ilosc_pytan'];
        $angpl = $_SESSION['angpl'];

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
            echo "<tr>";
            if (($odpowiedzi[$i] == $popr_odp[$i]) || ($odpowiedzi[$i] == $popr_odp_2[$i])) {
            $points++;
            echo "<td> {$slowo[$i]}:</td>";
            echo "<td> <span style = 'color: #00FF00'>{$odpowiedzi[$i]}</span></td>";
            echo "<td> {$odpowiedzi[$i]}</td>";
            }
            else {
                echo "<td> {$slowo[$i]} </td>";
                echo "<td><span style = 'color:red'> {$odpowiedzi[$i]} </span></td>";
                echo "<td>{$popr_odp[$i]}";
                
                if (($popr_odp_2[$i] != NULL) && $angpl) {
                    echo " / {$popr_odp_2[$i]}";
                }
                    echo "</td>";
                }
            echo "</tr>";
        }
        echo "</table>";
        echo "Uzyskane punkty: ".$points;
        ?>

        <form action="javascript:history.back()" method="post">
        <input type='submit' value='Jeszcze Raz' />
        </form>
        <form action="index.php" method="post">
        <input type='submit' value='Strona Tytułowa' />
        </form>
        
    </div>
</div>
    <footer>
    <a> Powered by MrRembes and Najdz3l </a>
</footer>

</body>
</html>
