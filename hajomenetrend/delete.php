<?php
if(isset($_GET['azon'])){
 //print_r($_GET['azon']);
   require("connect.php");
   $azon = (int)$_GET['azon'];
   //print_r($azon);
   $sql = "DELETE FROM menetrend
            WHERE azon = {$azon}";
            mysqli_query($dbconn, $sql);
}
/*
if($dbconn->query($sql)==false){
    echo "A rekord törlése nem sikerült: ". $dbconn;
}else{
    echo "A törlés sikeres";
}*/

header("Location: menetrend.php");
?>
