<?php print( '<?xml version = "1.0" encoding = "utf-8"?>' ) ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- Fig. 23.1: first.php -->
<!-- Simple PHP program. -->
<html xmlns = "http://www.w3.org/1999/xhtml">
<?php
   $name = "Harvey"; // declaration and initialization
?><!-- end PHP script -->
   <head>
      <title>Simple PHP document</title>
   </head>
   <body style = "font-size: 2em">
      <p>
         <strong>
            <!-- print variable name’s value -->
            Welcome to PHP, <?php print( "$name" ); ?>!
         </strong>
      </p>
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