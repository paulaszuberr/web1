<!DOCTYPE html>

<!-- Fig. 19.7: arrays.php -->
<!-- Array manipulation. -->
<html>
   <head>
      <meta charset = "utf-8">
      <title>Tablice</title>
     <style type = "text/css">
        p    { margin: 0; }
       .head { margin-top: 10px; font-weight: bold; }
     </style>
   </head>
   <body>
      <?php
         // create array first
         print( "<p class = 'head'>Style tańca</p>" );
         $first[ 0 ] = "Latino";
         $first[ 1 ] = "Tango";
         $first[ 2 ] = "Klasyczny";
         $first[] = "Brzucha";  
 
         // print each elements index and value
         for ( $i = 0; $i < count( $first ); ++$i ) 
            print( "Element $i to $first[$i]</p>" );
   
         print( "<p class = 'head'>Tablica II ze stylami</p>" );

         // call function array to create array second 
         $second = array( "Cha-cha", "Rumba", "Jiajv", "Polka" );

         for ( $i = 0; $i < count( $second ); ++$i ) 
            print( "Element $i to $second[$i]</p>" );
   
         print( "<p class = 'head'>Nasi nauczyciele</p>" );

         // assign values to entries using nonnumeric indices 
         $third[ "Paula" ] = 21;
         $third[ "Ola" ] = 18;
         $third[ "Bob" ] = 28;

         // iterate through the array elements and print each 
         // element�s name and value
         for ( reset( $third ); $element = key( $third ); next( $third ) )
            print( "<p>$element ma $third[$element] lat</p>" );
   
         print( "<p class = 'head'>Temat przewodni na każdy miesiąc</p>" );

         // call function array to create array fourth using
         // string indices
         $fourth = array(  
            "January"   => "melon",   "February" => "kotek",
            "March"     => "śliwka",   "April"    => "piesek",
            "May"       => "pomarańczza",   "June"     => "cebula",
            "July"      => "brzoskiwnia", "August"   => "pomidor",
            "September" => "czosnek",   "October"  => "rzodkiewka",
            "November"  => "pietruszka","December" => "ogórek" );

         // print each element�s name and value
         foreach ( $fourth as $element => $value )
            print( "<p>W $element tematem jest $value</p>" );
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
