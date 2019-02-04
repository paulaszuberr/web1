<!DOCTYPE html>

<!-- Fig. 19.3: data.php -->
<!-- Data type conversion. -->
<html>
   <head>
      <meta charset = "utf-8">
      <title>różne dziwne rzeczy</title>
      <style type = "text/css">
         p      { margin: 0; }
         .head  { margin-top: 10px; font-weight: bold; }
         .space { margin-top: 10px; }
      </style>
   </head>
   <body>
      <?php
         // declare a string, double and integer
         $testString = "3.5 seconds";
         $testDouble = 79.2;         
         $testInteger = 12;     
      ?><!-- end PHP script -->

      <!-- print each variables value and type -->    
      <p class = "head"></p>Wartiosci początkowe:</p>
      <?php 
         print( "<p>$testString to a(n) " . gettype( $testString ) 
            . "</p>" );
         print( "<p>$testDouble to a(n) " . gettype( $testDouble )
            . "</p>" );
         print( "<p>$testInteger to a(n) " . gettype( $testInteger ) 
            . "</p>" );
      ?><!-- end PHP script --> 
      <p class = "head">Ich konwersja wygląda tak:</p>
      <?php 
         // call function settype to convert variable
         // testString to different data types
         print( "<p>$testString " );           
         settype( $testString, "double" ); 
         print( " jako double to $testString</p>" );
         print( "<p>$testString " );
         settype( $testString, "integer" );
         print( " jako integer to $testString</p>" );
         settype( $testString, "string" ); 
      //    print( "<p class = 'space'>Converting back to a string results in 
      //       $testString</p>" );
                    
         // use type casting to cast variables to a different type  
         $data = "98.6 stopni";
         print( "<p class = 'space'>Mamy: $data to " . 
            gettype( $data ) . "</p>" );
         print( "<p class = 'space'>Zamiast rzutowania:</p>
            <p>jako double: " . (double) $data . "</p>" .   
            "<p>jako integer: " . (integer) $data . "</p>" );
                                                  
      ?><!-- end PHP script -->
   </body>
</html>