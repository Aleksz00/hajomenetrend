<?php
if(isset($_GET['azon'])){
    require("connect.php");
    $azon = (int)$_GET['azon'];
    //print_r($azon);
    $sql = "SELECT * FROM menetrend
             WHERE azon = {$azon}";
          $eredmeny = mysqli_query($dbconn, $sql);
             $sor = mysqli_fetch_assoc($eredmeny);
             var_dump($sor);

             $jarat = $sor['jarat'];
             $honnan = $sor['honnan'];
             $hova = $sor['hova'];
             $indul = $sor['indul'];
             $erkezik = $sor['erkezik'];
 }



?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  <form method="post">
    <input type="hidden" id="azon" name="azon" value="<?php print $azon;?>">

    <p>
        <label for="jarat">Járat:</label>
        <input type="text" name="jarat" id="jarat" value="<?php print $jarat;?>">

    </p>

    <p>
        <label for="honnan">Honnan:</label>
        <input type="text" name="honnan" id="honnan" value="<?php print $honnan;?>">
        
    </p>

    <p>
        <label for="hova">hová:</label>
        <input type="text" name="hova" id="hova" value="<?php print $hova;?>">
        
    </p>

    <p>
        <label for="indulas">Indulás:</label>
        <input type="time" name="indulas" id="indulas" value="<?php print $indul;?>">
        
    </p>

    <p>
        <label for="erkezik">Érkezik:</label>
        <input type="time" name="erkezik" id="erkezik" value="<?php print $erkezik;?>">
        
    </p>

    <input type="submit" name="rendben" id="rendben" value="rendben">
    <input type="reset" value="Mégse">
    <p><a href="menetrend.php">Vissza a menetrendekhez!</a></p>
  </form>
</body>
</html>