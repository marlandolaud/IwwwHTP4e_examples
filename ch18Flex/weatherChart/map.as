// map.as
// Handle the map functions for the WeatherChart application
import mx.managers.CursorManager;
import com.yahoo.webapis.maps.methodgroups.*;
import mx.controls.Alert;

// begin define constants
private const swfDomID : String = "weatherChart";   
private const UUID : int = Math.random() * 10000;

// YahooAPIKey string must be your own from developer.yahoo.com
private const YahooAPIKey : String = "Your Yahoo! API Key here";
private const mapURL : String = "as2map.swf";
private var mapController : MapController;

private function initMap() : void
{
   CursorManager.setBusyCursor(); // turn on busy cursor

   // wait for map to load, then call onMapLoaded method
   yahooMap.addEventListener( 'onMapLoad', onMapLoaded );  
   yahooMap.addEventListener( 'onMapError', onMapError );
} // end function initMap

// handle map after it has loaded
public function onMapLoaded( event : Object ) : void 
{   
   // instantiate map controller
   mapController = new MapController( yahooMap ); 
      
   // instantiate panTool method
   var panTools : PanTool = new PanTool( yahooMap ); 

   // allow user to pan across the map
   panTools.setPanTool( true ); 
   
   // instantiate the maps widget class
   var widgets : Widgets = new Widgets( yahooMap ); 
      
   // activate Navigator widget
   widgets.showNavigatorWidget(); 
      
   // activate map-type selection widget
   widgets.showSatelliteControlWidget();

   // turn off busy cursor
   CursorManager.removeBusyCursor(); 
}  // end function onMapLoaded

public function onMapError( errorCode:String, httpStatus:String ) : void 
{
   Alert.show(errorCode + '\n' + httpStatus, 'Map Load Error');
}