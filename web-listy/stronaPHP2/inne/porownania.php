<!DOCTYPE html>
<!-- backslesh od quotowywuje quota -->
<!-- Fig. 19.8: compare.php -->
<!-- Using the string-comparison operators. -->
<html>
   <head>
      <meta charset = "utf-8">
      <title>Porównywanie stringów</title>
      <style type = "text/css">
         p { margin: 0; }
      </style>
   </head>
   <body>
      <?php 
         // create array fruits
         $fruits = array( "ola", "paula", "banan", "bolek" );
      
         // iterate through each array element
         for ( $i = 0; $i < count( $fruits ); ++$i ) 
         {
            // call function strcmp to compare the array element
            // to string "paula" alfabetyczniee
            if ( strcmp( $fruits[ $i ], "banan" ) < 0 )
               print( "<p>" . $fruits[ $i ] . " jest wczesniej niż banan" );
            elseif ( strcmp( $fruits[ $i ], "banan" ) > 0 ) 
               print( "<p>" . $fruits[ $i ] . " jest pozniej niz banan " );
            else 
               print( "<p>" . $fruits[ $i ] . " zaczyna sie na ta sam litere co banan " );
         
            // use relational operators to compare each element
            // to string "ola"
            if ( $fruits[ $i ] < "ola" )     
               print( "i wczesniej niz ola!</p>" );
            elseif ( $fruits[ $i ] > "ola" ) 
               print( "i pozniej niz ola!</p>" );
            elseif ( $fruits[ $i ] == "ola" )
               print( "i rowna oli!</p>" );
         } // end for
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