// Fig. 19.19: CreateSilverlight.js
// JavaScript to add the Silverlight object to the Wrapper_MovieViewer div
function CreateSilverlight()
{
   Silverlight.createHostedObjectEx( {
      source: "streaming:/16645/MovieViewer", 
      parentElement: Wrapper_MovieViewer } );
}