
<!-- <!DOCTYPE html> -->
<html>
 <head>
  <title>Set Background Color Page
 </head>
<form>
  Background Color<p>

<input type='radio' name='color' value='pink'>pink<p>
<input type='radio' name='color' value='blue'>light blue<p>
<input type='radio' name='color' value='green'>light green<p>
<input type='submit'>
</form>
</html>
<?php
// cookies have to be handled before any html coding...
 if (!$_COOKIE["color"]) {
   $color = $_GET['color'];
// only set cookie if form has been filled out
   if ($color) {
 //this adds about 6 months to current time making a cookie that expires in 6 months
     $timesecs = 6*30*24*3600 + time();
     $color = $_GET['color'];
     setcookie(color, $color, $timesecs);
   }
 }
 ?>
 <?php
 // After submitting the form we do not yet have the cookie set, but we can learn desired color from form submission
 if ($_COOKIE["color"] || $_GET['color'])
   $bgcolor=$_COOKIE["color"] ? $_COOKIE["color"] : $_GET['color'];
 else
   $bgcolor="white";
 echo "<body bgcolor='$bgcolor'>";
?>

