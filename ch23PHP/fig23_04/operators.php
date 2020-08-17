<?php print( '<?xml version = "1.0" encoding = "utf-8"?>' ) ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- Fig. 23.4: operators.php -->
<!-- Using arithmetic operators. -->
<html xmlns = "http://www.w3.org/1999/xhtml">
   <head>
      <title>Using arithmetic operators</title>
   </head>
   <body>
      <?php
         $a = 5;
         print( "The value of variable a is $a <br />" );
         
         // define constant VALUE
         define( "VALUE", 5 );

         // add constant VALUE to variable $a
         $a = $a + VALUE;
         print( "Variable a after adding constant VALUE 
            is $a <br />" );
      
         // multiply variable $a by 2
         $a *= 2;
         print( "Multiplying variable a by 2 yields $a <br />" );
      
         // test if variable $a is less than 50
         if ( $a < 50 )
            print( "Variable a is less than 50 <br />" );

         // add 40 to variable $a
         $a += 40;
         print( "Variable a after adding 40 is $a <br />" );

         // test if variable $a is 50 or less
         if ( $a < 51 )     
            print( "Variable a is still 50 or less<br />" );

         // test if variable $a is between 50 and 100, inclusive
         elseif ( $a < 101 )
            print( "Variable a is now between 50 and 100, 
               inclusive<br />" ); 
         else               
            print( "Variable a is now greater than 100 <br />" );
           
         // print an uninitialized variable
         print( "Using a variable before initializing: 
            $nothing <br />" ); // nothing evaluates to ""

         // add constant VALUE to an uninitialized variable
         $test = $num + VALUE; // num evaluates to 0
         print( "An uninitialized variable plus constant 
            VALUE yields $test <br />" );

         // add a string to an integer
         $str = "3 dollars";
         $a += $str;        
         print( "Adding a string to variable a yields $a <br />" );
      ?><!-- end PHP script -->
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
