<?php

define( "FIVE_DAYS", 10 ); // define constant

 $colors = array('black' => '#000000',
                 'white' => '#ffffff',
                 'red'   => '#ff0000',
                 'blue'  => '#0000ff');
$fonts = array('Verdana'=> 'Verdana');
  
 $bg_name = $_POST['background'];
 $fg_name = $_POST['foreground'];
 $fo_name = $_POST['font'];
  
 setcookie('bg', $colors[$bg_name], time() + FIVE_DAYS );//sprawdzic metode zadania, sprawdzic$_SERVER request metod jest post to jestesmy  w poscie
 setcookie('fg', $colors[$fg_name], time() + FIVE_DAYS );
 setcookie('fo', $fonts[$fo_name], time() + FIVE_DAYS );
?>
<html>
<head><title>Ustawione preferencje</title></head>
<body>
  
 Twoje preferencje:<br />
Tło: <?= $bg_name ?><br />
Czcionka kolor: <?= $fg_name ?><br />
Czcionka styl: <?= $fo_name ?><br />

Kliknij <a href="prefs-demo.php">tutaj</a> żeby zobaczyć, jak to wygląda.
  
</body>
</html>