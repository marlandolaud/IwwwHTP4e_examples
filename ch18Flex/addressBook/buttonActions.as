// Fig. 18.14: buttonActions.as
// Implement the actions of each button
import mx.events.CloseEvent;

// "Cancel" button
private function cancelContact() : void 
{
   // revert edit fields to original value
   firstName.text = contactsView.selectedItem.firstname;
   lastName.text = contactsView.selectedItem.lastname;
   streetAddress.text = contactsView.selectedItem.street;
   city.text = contactsView.selectedItem.city;
   state.text = contactsView.selectedItem.state;
   zipCode.text = contactsView.selectedItem.zip;
   eMail.text = contactsView.selectedItem.email;
   phone.text = contactsView.selectedItem.phone;
   // return user to "View Contacts" section
   accordion.selectedIndex = 0;
} // end function cancelContact

// "Delete" button
private function deleteContact( event : CloseEvent ) : void 
{
   // handle if user clicked "Yes" in "Delete Contact" dialog box
   if ( event.detail == Alert.YES )
   {  
      // return user to "View Contacts" section if 
      // the user was in "Edit Contacts" section
      if ( accordion.selectedIndex == 2 )
         accordion.selectedIndex = 0;

      // remove selected contact
      addressCollection.removeItemAt( contactsView.selectedIndex );
   } // end if
} // end function deleteContact

// "E-Mail" button
public function emailContact() : void 
{            
   // form "mailto" URL given the selected e-mail address
   var mailURL : URLRequest = new URLRequest( 'mailto:' + 
      contactsView.selectedItem.email );
   
   // open the URL without opening new window
   navigateToURL( mailURL, "_self" );
} // end function emailContact

// "Directions" button
public function getDirections() : void 
{
   // form directions URL given the selected address
   var directionsURL : URLRequest = new URLRequest(
      'http://maps.yahoo.com/broadband#mvt=m&q2=' + 
      contactsView.selectedItem.street + ' ' + 
      contactsView.selectedItem.city + ' ' + 
      contactsView.selectedItem.state +  ' ' + 
      contactsView.selectedItem.zip );
   // open URL in a new window
   navigateToURL( directionsURL, "_blank" );
} // end function getDirections

// "Save" button
private function saveContact() : void 
{
   // write changes to data array
   addressCollection.setItemAt( {
      firstname : firstName.text,
      lastname : lastName.text,
      street : streetAddress.text,
      city : city.text,
      state : state.text,
      zip : zipCode.text,
      email : eMail.text,
      phone : phone.text },
      contactsView.selectedIndex );
      
   // refresh data collection so that search will still work
   addressCollection.refresh();
      
   // return user to "View Contacts" section
   accordion.selectedIndex = 0;
} // end function saveContact

// "New" button
private function newContact() : void 
{
   addressCollection.addItem( {
      firstname : 'New', lastname : 'Contact',
      street : null, city : null, state : null,
      zip : null, email : null, phone : null } );
   contactsView.selectedIndex = addressCollection.length;
   accordion.selectedIndex = 2;
} // end function newContact