// Fig. 18.12 : search.as
// Using a filterFunction for a live search feature
private function filter() : void
{
   // define filter function
   addressCollection.filterFunction = testMatch;
   addressCollection.refresh(); // refresh data to only display matches
} // end function filter
        
private function testMatch( item : Object ) : Boolean
{
   // save search term to variable
   var searchTerm:String = textFilter.text.toLowerCase();

   // tests if search parameter matches any field for each item
   return( item.firstname.toLowerCase().search( searchTerm ) != -1 ||
       item.lastname.toLowerCase().search( searchTerm ) != -1 ||
       item.street.toLowerCase().search( searchTerm ) != -1 ||
       item.city.toLowerCase().search( searchTerm ) != -1 ||
       item.state.toLowerCase().search( searchTerm ) != -1 ||
       String( item.zip ).search( searchTerm ) != -1 ||
       item.email.toLowerCase().search( searchTerm ) != -1 ||
       item.phone.toLowerCase().search( searchTerm ) != -1 )
} // end function testMatch

/*
**************************************************************************
* ( C ) Copyright 1992-2007 by Deitel & Associates, Inc. and             *
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
*/