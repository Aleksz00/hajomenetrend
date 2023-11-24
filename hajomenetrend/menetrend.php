<?php
//csatlakozas az adatbázishoz
require("connect.php");
$rendez = (isset($_GET['rendez'])) ? $_GET['rendez'] : "jarat";
$kifejezes = (isset($_POST['kifejezes'])) ?  $_POST['kifejezes'] : "";

$sql = "SELECT * 
        FROM menetrend
        WHERE (
            jarat LIKE '%{$kifejezes}%'
           OR honnan LIKE '%{$kifejezes}%'
           OR hova LIKE '%{$kifejezes}%'
        )
        ORDER BY {$rendez} ASC";
        
$eredmeny = mysqli_query($dbconn, $sql);

$kimenet =" <table>
<tr>
    <th><a href=\"\">Járat</a></th>
    <th><a href=\"\">Honnan</a></th>
    <th><a href=\"\">Hová</a></th>
    <th><a href=\"\">Indulás</a></th>
    <th><a href=\"\">Érkezés</a></th>
    <th>Törlés</th>
    <th>Módosítás</th>
</tr>";

while($sor = mysqli_fetch_assoc($eredmeny)){
    //var_dump($sor);
    $kimenet .= "
    <tr>
    <td>{$sor['jarat']}</td>
    <td>{$sor['honnan']}</td>
    <td>{$sor['hova']}</td>
    <td>{$sor['indul']}</td>
    <td>{$sor['erkezik']}</td>
    <td><a href=\"delete.php?azon={$sor['azon']}\">Törles</a></td>
    <td><a href=\"update.php?azon={$sor['azon']}\">Modositas</a></td>
   </tr>";
};
$kimenet .=" </table>";

?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Menetrendek</title>
</head>
<body>
    <div class="container">
        <h1>Hajók menetrendje</h1>
        <form method="post">
            <label>Kereses a listaban</label>
            <input type="search" name="kifejezes" id="kifejezes">
        </form>
        <p>Rendezesre kattintson az elrendezésre</p>
       
        <?php
        print $kimenet;
        ?>

    </div>
</body>
</html>