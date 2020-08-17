<?php 
   // Fig. 23.17: cookies.php
   // Writing a cookie to the client.
   extract( $_POST );

   // write each form field’s value to a cookie and set the 
   // cookie’s expiration date
   setcookie( "Name", $Name, time() + 60 * 60 * 24 * 5 );    
   setcookie( "Height", $Height, time() + 60 * 60 * 24 * 5 );
   setcookie( "Color", $Color, time() + 60 * 60 * 24 * 5 );  
?><!-- end PHP script -->

<?php print( '<?xml version = "1.0" encoding = "utf-8"?>' ) ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns = "http://www.w3.org/1999/xhtml">
   <head>
      <title>Cookie Saved</title>
      <style type = "text/css">
         body { font-family: arial, sans-serif }
         span { color: blue }
      </style>
   </head>
   <body>
      <p>The cookie has been set with the following data:</p>
      
      <!-- print each form field’s value -->
      <br /><span>Name:</span><?php print( $Name ) ?><br />          
      <span>Height:</span><?php print( $Height ) ?><br />         
      <span>Favorite Color:</span>      
      <span style = "color: <?php print( "$Color\">$Color" ) ?>
      </span><br />      
      <p>Click <a href = "readCookies.php">here</a>
         to read the saved cookie.</p>
   </body>
</html>

<!--
**************************************************************************
* (C) Copyright 1992-2008 by Deitel & Associates, Inc. and               *
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
