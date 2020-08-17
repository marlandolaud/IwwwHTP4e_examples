<?php print( '<?xml version = "1.0" encoding = "utf-8"?>' ) ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- Fig. 23.20: readCookies.php -->
<!-- Displaying the cookie’s contents. -->
<html xmlns = "http://www.w3.org/1999/xhtml">
   <head>
      <title>Read Cookies</title>  
      <style type = "text/css">
         body   { font-family: arial, sans-serif }
         table  { border-width: 5px;
                  border-style: outset }
         td     { padding: 10px }
         .key   { background-color: #F0E68C }
         .value { background-color: #FFA500 }
      </style>
   </head>
   <body>
      <p>
         <strong>The following data is saved in a cookie on your
            computer.</strong>
      </p>
      <table>
         <?php
            // iterate through array $_COOKIE and print
            // name and value of each cookie
            foreach ($_COOKIE as $key => $value )
               print( "<tr><td class = 'key'>$key</td>
                  <td class = 'value'>$value</td></tr>" );
         ?><!-- end PHP script -->
      </table>
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
