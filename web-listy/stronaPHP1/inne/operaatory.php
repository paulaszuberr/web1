<!DOCTYPE html>

<!-- Fig. 19.4: operators.php -->
<!-- Using arithmetic operators. -->
<html>
   <head>
      <meta charset = "utf-8">
     <style type = "text/css">
        p { margin: 0; }
     </style>
      <title>Zabawa z operatorami</title>
   </head>
   <body>
      <?php
         $a = 5;
         print( "<p>Wartość a to: $a</p>" );
         
         // define constant VALUE
         define( "VALUE", 5 );

         // add constant VALUE to variable $a
         $a = $a + VALUE;
         print( "<p>a dodać wartość VALUE to: $a</p>" );
      
         // multiply variable $a by 2
         $a *= 2;
         print( "<p>Pomnożone przez 2 to: $a</p>" );
      
         // test if variable $a is less than 50
         if ( $a < 50 )
            print( "<p>a jest mniejsze niż 50</p>" );

         // add 40 to variable $a
         $a += 40;
         print( "<p>a po dodaniu 40 to: $a</p>" );

         // test if variable $a is 50 or less
         if ( $a < 51 )     
            print( "<p>zmienna a to wciąż 50 lub mniej</p>" );
         elseif ( $a < 101 ) // $a >= 51 and <= 100
            print( "<p>zmienna a jest teraz między 50 and 100</p>" ); 
         else // $a > 100
            print( "<p>zmienna a jest teraz większa niż 100</p>" );
        
      ?><!-- end PHP script -->
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
