<?php print( '<?xml version = "1.0" encoding = "utf-8"?>' ) ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- Fig. 23.15: database.php -->
<!-- Querying a database and displaying the results. -->
<html xmlns = "http://www.w3.org/1999/xhtml">
   <head>
      <title>Search Results</title>
   <style type = "text/css">
         body  { font-family: arial, sans-serif;
                 background-color: #F0E68C } 
         table { background-color: #ADD8E6 }
         td    { padding-top: 2px;
                 padding-bottom: 2px;
                 padding-left: 4px;
                 padding-right: 4px;
                 border-width: 1px;
                 border-style: inset }
      </style>
   </head>
   <body>
      <?php
         extract( $_POST );

         // build SELECT query
         $query = "SELECT " . $select . " FROM books";

         // Connect to MySQL
         if ( !( $database = mysql_connect( "localhost",
            "iw3htp4", "iw3htp4" ) ) )                      
            die( "Could not connect to database </body></html>" );
   
         // open Products database
         if ( !mysql_select_db( "products", $database ) )
            die( "Could not open products database </body></html>" );

         // query Products database
         if ( !( $result = mysql_query( $query, $database ) ) ) 
         {
            print( "Could not execute query! <br />" );
            die( mysql_error() . "</body></html>" );
         } // end if

         mysql_close( $database );
      ?><!-- end PHP script -->
      <h3>Search Results</h3>
      <table>
         <?php
            // fetch each record in result set
            for ( $counter = 0; $row = mysql_fetch_row( $result );
               $counter++ )
            {
               // build table to display results
               print( "<tr>" );

               foreach ( $row as $key => $value ) 
                  print( "<td>$value</td>" );

               print( "</tr>" );
            } // end for
         ?><!-- end PHP script -->
      </table>
      <br />Your search yielded <strong>
      <?php print( "$counter" ) ?> results.<br /><br /></strong>
      <h5>Please email comments to
         <a href = "mailto:deitel@deitel.com">
            Deitel and Associates, Inc.</a>
      </h5>
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