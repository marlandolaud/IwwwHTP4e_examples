// Fig 19.14: CreateSilverlight.js
// Adds the Silverlight object to the MovieViewerWrapper div
function CreateSilverlight()
{
  Sys.Silverlight.createHostedObjectEx( {
    source : "streaming:/16645/MediaPlayer", 
    parentElement : MovieViewerWrapper } );
}
