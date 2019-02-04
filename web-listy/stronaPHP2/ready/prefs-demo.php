<!DOCTYPE html>

<html>
<head><title>Front Door</title></head>
<?php
 $bg = $_COOKIE['bg'];
 $fg = $_COOKIE['fg'];
 $fo = $_COOKIE['fo'];
?>
<body bgcolor="<?= $bg ?>" text="<?= $fg ?>" font="<?= $fo ?>">
<h1>Cześć człowieku!</h1>
  
To jest twoja czcionka kolorowa!<p>
 
Chciałbyś zmienić swoje preferencje<a href="background.html"></a>?
  
</body>
</html>