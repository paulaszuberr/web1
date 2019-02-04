<!DOCTYPE html>

<!-- Fig. 19.14: form.php -->
<!-- Process information sent from form.html. -->
<html>
   <head>
      <meta charset = "utf-8">
      <title>Autoryzacja formularza</title>
      <style type = "text/css">
         p       { margin: 0px; }
         .error  { color: red }
         p.head  { font-weight: bold; margin-top: 10px; }
      </style>
   </head>
   <body>
      <?php
         extract( $_POST );  

         // determine whether phone number is valid and print
         // an error message if not
         if (!preg_match( "/^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$/", $phone))
         {
            print( "<p class = 'error'>Niewłaściwy numer telefonu</p>
               <p>Musi być w formacie 
               (555) 555-5555</p><p>Naciśnij powrót, 
               wpisz właściwy numer i zatwierdź.</p>
               <p>Dziękuję!</p>" );
            die( "</body></html>" ); // terminate script execution
         }
      ?><!-- end PHP script -->
      <p>Cześć <?php print( "$fname" ); ?>. Dziękuję za wypełninie formularza. Zostałeś dodany do <?php print( "$wybor " ); ?>
         listy malilingowej.</p>
      <p class = "head">Zapisaliśmy następujące dane:</p>
      <p>Imię: <?php print( "$fname $lname" ); ?></p>
      <p>Email: <?php print( "$email" ); ?></p>
      <p>Telefon: <?php print( "$phone" ); ?></p>
      <p>Jak się o nas dowiedziałeś: <?php print( "$howtosite" ); ?></p>
      <p>Czy chcesz koszulkę: <?php print( "$koszulka" ); ?></p>
      <p>Jak się o nas dowiedziałeś: <?php print( "$howtosite" ); ?></p>
      <p class = "head">To tylko próbka.       
         Nie zostałeś dodany do listy mailingowej.</p>   
   </body>
</html>

<!--
**************************************************************************
* (C) Copyright 1992-2012 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                                                                        *
* DISCLAIMER: The authors and publisher of this book have used their     *
* best efforts in preparing the book. These efforts include the          *
* development, research, and testing of the theories and programs        *
* to determine their effectiveness. The authors and publisher make       *
* no warranty of any kind, expressed or implied, with regard to these    *
* programs or to the documentation contained in these books. The authors *
* and publisher shall not be liable in any event for incidental or       *
* consequential damages in connection with, or arising out of, the       *
* furnishing, performance, or use of these programs.                     *
**************************************************************************
-->