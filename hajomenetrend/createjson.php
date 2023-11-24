<?php
require("connect.php");
$sql = "SELECT * FROM menetrend";
$result = $dbconn ->query($sql);

while($hajok = $result ->fetch_assoc()){
    $menetrend[] = $hajok;
}
highlight_string("<?php" . var_export($menetrend,true) . ";?>");
$encoded_data = json_encode($menetrend, JSON_PRETTY_PRINT);
file_put_contents('hajok.json', $encoded_data);
?>