function CreateSilverlight()
{
   Silverlight.createHostedObjectEx( {
      source: "streaming:/16645/MovieViewer", 
      parentElement: Wrapper_MovieViewer } );
}