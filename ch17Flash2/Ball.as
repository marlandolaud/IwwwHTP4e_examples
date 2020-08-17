// Fig. 17.12: Ball.as
// Move ball and set speed.
package
{
   // import relevant classes
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;

   public class Ball extends MovieClip
   {
      var speedX : int; // speed in x-direction
      var speedY : Number; // speed in y-direction

      // Create Timer object to move ball
      var moveBallTimer : Timer = new Timer( 33, 0 );

      // Ball constructor starts moveBallTimer
      public function Ball() : void
      {
         // call function moveBall as moveBallTimer event handler
         moveBallTimer.addEventListener(
            TimerEvent.TIMER, moveBall );
         moveBallTimer.start();
      } // end Ball constructor

      // update the x and y coordinates using the specific speeds
      private function moveBall( t : TimerEvent )
      {
         x += speedX;
         y += speedY;
      } // end function moveBall

      // set speed in x direction
      public function setSpeedX( v : int )
      {
         speedX = v;
      } // end function setSpeedX

      // get speed in x direction
      public function getSpeedX() : int
      {
         return speedX;
      } // end function getSpeedX

      // set speed in y direction
      public function setSpeedY( v : int, fireRatio : Number )
      {
         speedY = v * fireRatio;
      } // end function setSpeedY

      // get speed in y direction
      public function getSpeedY() : Number
      {
         return speedY;
      } // end function getSpeedY

      public function stopTimers() : void
      {
         moveBallTimer.stop();
      } // end function stopTimer
   } // end class Ball
} // end package
