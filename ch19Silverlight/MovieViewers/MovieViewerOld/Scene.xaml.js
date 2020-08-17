// Fig. 19.7: Scene.xaml.js
// JavaScript code-behind for Movie Viewer

// create variables to more easily access the Silverlight elements
var host;
var movieMediaElement;
var downloadProgress;
var timeText;
var timeline;
var seekHead;
var timelineTimer;
var playButton;
var pauseButton;
var playOverlay;
var timelineTimer;
var playOverlayFadeIn;
var playOverlayFadeOut;
var timelineTimer;
var volumeCanvas;
var volumeHead;
var crazyDogButton;
var gravityButton;
var apollo15Button;
var f35Button;
var crazyDogButtonText;
var gravityButtonText;
var apollo15ButtonText;
var f35ButtonText;
var movieViewerCanvas;
var controls;
var fullscreenButton;
var timeCanvas;
var divider;
var titleText;
var playOverlayListener; // token for event listener

function canvasLoaded( sender, eventArgs )
{
   // set variables to more easily access the Silverlight elements
   host = sender.getHost(); // allow access to host plug-in
   movieMediaElement = sender.findName( "movieMediaElement" );
   downloadProgress = sender.findName( "downloadProgress" );
   timeText = sender.findName( "timeText" );
   timeline = sender.findName( "timeline" );
   seekHead = sender.findName( "seekHead" );
   timelineTimer = sender.findName( "timelineTimer" );
   playButton = sender.findName( "playButton" );
   pauseButton = sender.findName( "pauseButton" );
   playOverlay = sender.findName( "playOverlay" );
   timelineTimer = sender.findName( "timelineTimer" );
   playOverlayFadeIn = sender.findName( "playOverlayFadeIn" );
   playOverlayFadeOut = sender.findName( "playOverlayFadeOut" );
   timelineTimer = sender.findName( "timelineTimer" );
   volumeCanvas = sender.findName( "volumeCanvas" );
   volumeHead = sender.findName( "volumeHead" );
   crazyDogButton = sender.findName( "crazyDogButton" );
   gravityButton = sender.findName( "gravityButton" );
   apollo15Button = sender.findName( "apollo15Button" );
   f35Button = sender.findName( "F35Button" );
   crazyDogButtonText = sender.findName( "crazyDogButtonText" );
   gravityButtonText = sender.findName( "gravityButtonText" );
   apollo15ButtonText = sender.findName( "apollo15ButtonText" );
   f35ButtonText = sender.findName( "F35ButtonText" );
   movieViewerCanvas = sender.findName( "movieViewerCanvas" );
   controls = sender.findName( "controls" );
   fullscreenButton = sender.findName( "fullscreenButton" );
   timeCanvas = sender.findName( "timeCanvas" );
   divider = sender.findName( "divider" );
   titleText = sender.findName( "titleText" );

   // add an event handler for events onResize and OnFullScreenChange
   host.content.onResize = onResizeHandler;
   host.content.onFullScreenChange = onResizeHandler;

   // update layout of application with current dimensions
   updateLayout( host.content.actualWidth, host.content.actualHeight, sender );

   // start the timer
   timelineTimer.begin();
} // end function canvasLoaded

// timelineTimer event handler
function updateTime( sender )
{
   // get the hours, minutes and seconds of the video's current position
   var seconds = movieMediaElement.position.Seconds;
   var hours = convertToHHMMSS( seconds )[ 0 ]; // Saves hours to var
   var minutes = convertToHHMMSS( seconds )[ 1 ]; // Saves minutes to var
   seconds = convertToHHMMSS( seconds )[ 2 ]; // Saves seconds to var
    
   // set text of timeText to current time in hh:mm:ss format
   timeText.text = hours + ":" + minutes + ":" + seconds;

   // set width of downloadProgress rectangle
   downloadProgress.width = movieMediaElement.downloadProgress *
      timeline.width;
   
   // if the movie has started playing, place the seek head at a
   // position representing the playback progress
   if ( movieMediaElement.position.Seconds && movieMediaElement.naturalDuration )
   {
      seekHead[ "Canvas.Left" ] = ( ( movieMediaElement.position.Seconds /
         movieMediaElement.naturalDuration.Seconds ) * timeline.Width ) +
         timeline[ "Canvas.Left" ];
   } // end if
  
   else  // if not, place the seek head at the beginning
   {
      seekHead[ "Canvas.Left" ] = timeline[ "Canvas.Left" ];
   } // end else
      
   // if download is incomplete or movie is playing
   if ( movieMediaElement.downloadProgress != 1 ||  
      movieMediaElement.CurrentState == "Playing" )
   {
      timelineTimer.begin(); // run timelineTimer again
   } // end if
} // end function updateTime

// handle play and pause buttons
function playAndPauseButtonEventHandler( sender, eventArgs )
{
   // Check the CurrentState of the movie
   // pause if playing, play if paused or stopped
   if ( movieMediaElement.CurrentState == "Playing" )
   {
      movieMediaElement.pause();

      playButton.Visibility = "Visible"; // show play button
      pauseButton.Visibility = "Collapsed"; // hide pause button
   } // end if
   else 
   {
      movieMediaElement.play();

      timelineTimer.begin(); // start timelineTimer again

      pauseButton.Visibility = "Visible"; // show pause button
      playButton.Visibility = "Collapsed"; // hide play button

      playOverlay.opacity = 0; // hide "Play Again?" button

      // remove the click handler from "Play Again?" button
      if ( playOverlayListener )
      {
         playOverlay.removeEventListener( "MouseLeftButtonDown",
            playOverlayListener );
      } // end if
   } // end if
} // end function playAndPauseButtonEventHandler

// handle stop button
function stopButtonEventHandler( sender, eventArgs )
{
   movieMediaElement.stop(); // stop the movie
   playButton.Visibility = "Visible"; // show play button
   pauseButton.Visibility = "Collapsed"; // hide pause button

   updateTime( sender );
} // end function stopButtonEventHandler

// handle MediaOpened event 
function movieOpenedHandler( sender, eventArgs )
{
   timelineTimer.begin();

   // show "Play" button
   playOverlayFadeIn.begin();
   playOverlayListener = playOverlay.addEventListener( "MouseLeftButtonDown",
        playMovie );

} // end function movieOpenedHandler

// handle when movie has reached end
function movieEndedHandler( sender, eventArgs )
{
   movieMediaElement.stop(); // stop the movie
   playButton.Visibility = "Visible"; // show play button
   pauseButton.Visibility = "Collapsed"; // hide pause button

   // show "Play" button
   playOverlayFadeIn.begin();
   playOverlayListener = playOverlay.addEventListener( "MouseLeftButtonDown", playMovie );

   updateTime( sender );
} // end function movieEndedHandler

function movieThumbHandler ( sender, eventArgs )
{
   movieMediaElement.stop(); // stop movie
   playButton.Visibility = "Visible"; // show play button
   pauseButton.Visibility = "Collapsed"; // hide pause button

   // set each thumbnail's text to white
   crazyDogButtonText.Foreground = "white";
   gravityButtonText.Foreground = "white";
   apollo15ButtonText.Foreground = "white";
   F35ButtonText.Foreground = "white";

   switch (sender.name)
   {
      case "crazyDogButton":
         movieMediaElement.source = "bailey.wmv"; // open Bailey video
         crazyDogButtonText.Foreground = "red"; // indicate this is selected
         break;
      case "gravityButton":
         movieMediaElement.source = "featherAndHammer.wmv"; // open Bailey video
         gravityButtonText.Foreground = "red"; // indicate this is selected
         break;
      case "apollo15Button":
         movieMediaElement.source = "apollo15Launch.wmv"; // open Bailey video
         apollo15ButtonText.Foreground = "red"; // indicate this is selected
         break;
      case "F35Button":
         movieMediaElement.source = "F35.wmv"; // open Bailey video
         F35ButtonText.Foreground = "red"; // indicate this is selected
         break;
   }
   // begin timer to show download progress
   // timelineTimer.begin();
}

// handle toggle full-screen button by toggling fullScreen state
function toggleFullScreen( sender, eventArgs )
{
   host.content.fullScreen = !host.content.fullScreen;
} // end function toggleFullScreen

// handle onFullScreenChange and onResize events
function onResizeHandler( sender, eventArgs )
{
   // update layout based on current dimensions
   updateLayout( host.content.actualWidth,
      host.content.actualHeight, sender );

   // update time and timeline
   updateTime( sender );

   // this is necessary for the buttons to be updated properly
   playButton[ "Canvas.Top" ] = 11;
   pauseButton[ "Canvas.Top" ] = 11;
   playButton[ "Canvas.Top" ] = 10;
   pauseButton[ "Canvas.Top" ] = 10;
} // end function onResizeHandler

// reposition and resize elements based on new dimensions
function updateLayout( width, height, sender )
{
   // resize and reposition the elements based on the screen dimensions
   movieViewerCanvas.Width = width;
   movieViewerCanvas.Height = height;
   movieMediaElement.Width = width;
   movieMediaElement.Height = height - 220;
   playOverlay[ "Canvas.Left" ] = 
      ( width / 2 ) - ( ( playOverlay.width ) / 2 );
   playOverlay[ "Canvas.Top" ] = 
      ( ( height - 220 ) / 2 ) - ( playOverlay.height / 2 );
   controls.width = width - 8;
   controls[ "Canvas.Left" ] = ( width / 2 ) - ( ( controls.width ) / 2 );
   controls[ "Canvas.Top" ] = height - 168;
   playButton[ "Canvas.Top" ] = 10;
   pauseButton[ "Canvas.Top" ] = 10;
   timeline.width = controls.width - 235;
   fullscreenButton[ "Canvas.Left" ] = controls.width - 135;
   timeCanvas[ "Canvas.Left" ] = controls.width - 100;
   volumeCanvas[ "Canvas.Left" ] = controls.width - 22;
   titleText[ "Canvas.Left" ] = ( width / 2 ) - ( ( titleText.width ) / 2 );
   divider.Width = width;
} // end function updateLayout

// handle timelineCanvas's MouseLeftButtonDown event
function timelineEventHandler( sender, eventArgs )
{
   // determine new time from mouse position
   var seconds = ( ( eventArgs.getPosition( timeline ).x ) / 
      timeline.Width ) * movieMediaElement.NaturalDuration.seconds;
   var hours = convertToHHMMSS( seconds )[ 0 ]; // Saves hours to var
   var minutes = convertToHHMMSS( seconds )[ 1 ]; // Saves minutes to var
   seconds = convertToHHMMSS( seconds )[ 2 ]; // Saves seconds to var
   movieMediaElement.Position = hours + ":" + minutes + ":" + seconds;
   updateTime( sender );
} // end function timelineEventHandler

// handle volume's MouseLeftButtonDown event
function volumeHandler( sender, eventArgs )
{
   movieMediaElement.volume = 1 - ( ( eventArgs.getPosition( 
      volumeCanvas ).y ) / 30 );
   volumeHead[ "Canvas.Top" ] = eventArgs.getPosition( volumeCanvas ).
      y - 10;
} // end function volumeHandler

// handle click of "Play" button
function playMovie( sender, eventArgs )
{
   // play movie, show pause button
   movieMediaElement.play();
   pauseButton.Visibility = "Visible";
   playButton.Visibility = "Collapsed";

   // start timelineTimer again
   timelineTimer.begin();

   // fade out "Play" button
   playOverlayFadeOut.begin();

   // remove the click handler from "Play Again?" button
   if ( playOverlayListener )
   {
      playOverlay.removeEventListener( 
         "MouseLeftButtonDown", playOverlayListener );
   } // end if
} // end function playMovie

   // get the hours, minutes and seconds of the video's current position
   // Date element converts seconds to hh:mm:ss format
function convertToHHMMSS( seconds )
{
   var datetime = new Date( 0, 0, 0, 0, 0, seconds );
   var hours = datetime.getHours(); // Saves hours to var
   var minutes = datetime.getMinutes(); // Saves minutes to var
   var seconds = datetime.getSeconds(); // Saves seconds to var

   // ensure hh:mm:ss format
   if ( seconds < 10 )
   {
       seconds = "0" + seconds;
   } // end if

   if ( minutes < 10 ) 
   {
       minutes = "0" + minutes;
   } // end if

   if ( hours < 10 )
   {
      hours = "0" + hours;
   } // end if

   return [hours, minutes, seconds]
}