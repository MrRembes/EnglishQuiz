<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Słownik 19_09_23</title>
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
    <body>

<nav>
    <form action="index.php">
        <input type="submit" value="Powrót">
    </form>
</nav>

<div id = "wrapper">
    <div id="wynik">
        <table>
                <tr>
                    <th>Słówko</th>
                    <th>Poprawna Odpowiedź 1</th>
                    <th>Poprawna Odpowiedź 2</th>
                </tr>
<?php 

    $db = new mysqli('localhost', 'root', '', 'angielski_slowka'); // Łączenie z bazą danych \\
    $table = "ang_19_09_2023";

    $q = "SELECT count(*) FROM $table"; // Tabela z której bierze dane \\
    $result = $db->query($q);
    $row = $result->fetch_row();
    $count = $row[0];

    //1
    $q = "SELECT * FROM $table"; // Tabela z której bierze dane \\
    $result = $db->query($q);

    while ($row = $result->fetch_array()) {
        echo "<tr>";
        echo "<td>{$row[1]}</td>";
        echo "<td>{$row[2]}</td>";
        echo "<td>{$row[3]}</td>";
        echo "</tr>";
    }
        echo "</table>";
?>
</div>
    </div>
        
    <footer>
        <a> Powered by MrRembes and Najdz3l </a>
    </footer>

    </body>
</html>