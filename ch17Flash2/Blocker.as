// Fig. 17.6: Blocker.as
// Set position and speed of Blocker.
package
{
   // import relevant classes
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class Blocker extends MovieClip
   {
      var speed : int; // speed of Blocker
      var upDown : int; // direction of Blocker
      var moveBlockerTimer : Timer = new Timer ( 33, 0 );
   
      // call function moveBlocker as moveBlockerTimer event handler
      public function Blocker() : void
      {
         moveBlockerTimer.addEventListener ( 
            TimerEvent.TIMER, moveBlocker );
         moveBlockerTimer.start();
      } // end Blocker constructor

      // move the Blocker   
      private function moveBlocker( t : TimerEvent ) 
      {
         // if Blocker is at the top or bottom of the stage, 
         // change its direction     
         if ( y > 347.5 )
         {
            upDown = -1;
         } // end if
         
         else if ( y < 52.5 ) 
         {
            upDown = 1;
         } // end else

         y += getSpeed() * upDown;
      } // end function moveBlocker 

      // set speed for the Blocker 
      public function setSpeed ( v : int )
      {
         speed = v;
      } // end function setSpeed

      // get speed of the Blocker 
      public function getSpeed() : int
      {
         return speed;
      } // end function getSpeed
     
      // set direction for the Blocker 
      public function setUpDown( newUpDown : int )
      {
         upDown = newUpDown;
      } // end function setUpDown 

      // get direction of the Blocker 
      public function getUpDown() : int
      {
         return upDown;
      } // end function getUpDown

      // stop moveBlockerTimer
      public function stopTimers() : void
      {
         moveBlockerTimer.stop();
      }
   } // end class Blocker
} // end package