/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.maps.methodgroups {
	
	import com.yahoo.webapis.maps.methodgroups.AbstractMethod;
	import com.yahoo.webapis.maps.YahooMapService;
	import com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer;
	import flash.external.ExternalInterface;
	import flash.events.Event;
	import com.yahoo.webapis.maps.events.MapEvent;
	
	/**
	 * This class communicates with the AS2 methods found in the 
	 * com.yahoo.maps.api.flash.YahooMap package. This class extends
	 * the AbstractMethod class which not only is waiting for some 
	 * "totally cool" new functionality but also contains the current 
	 * instances UUID and swfDomId.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9
	 * @author Scott Morgan 02/25/2007
	 * 
	 * @see com.yahoo.maps.api.flash.AbstractMethod
	 * @see com.yahoo.maps.api.flash.YahooMap
	*/
	public class MapController extends AbstractMethod {
		
		/**
		 * @private
		 * Access to the singleton ExternalInterfaceBuffer where all cross-AVM
		 * communication occurs.
		 * 
		 * @see com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer
		 */
		private var EIBuffer:ExternalInterfaceBuffer = ExternalInterfaceBuffer.getInstance();
		
		/**
		 * Constructor
		 * 
		 * @param service YahooMapService class that stores instance config data
		 */
		public function MapController(service:YahooMapService):void {
			super(service.UUID, service.swfDomId);
		}
		
		/**
		 * Set the center position of the map to the specified address. 
		 * If duration is greater than 0, the map will pan for the specified 
		 * number of milliseconds. If the application is unable to geocode the 
		 * address, the MapEventDispatcher class dispatches a "mapGeocodeError" event 
		 * that contains an array of suggested addresses. If the geocode is successful, the 
		 * map pans to that position. The pan length is based on the duration paramater.
		 * 
		 * @param address - A string that specifies the street address, city, state and zip code on which to center the map. 
		 * @param duration - The number of milliseconds in which to pan (or slide) the map to the specified 
		 * location. A duration of 0 represents no panning and the map moves immediately to the new location. 
		 * 
		 * @see com.yahoo.webapis.maps.events.MapEventDispatcher
		 */ 
		public function setCenterByAddress(address:String, duration:Number = 0):void {
			EIBuffer.addCall({method:super.swfDomId + ".setCenterByAddress" + super.UUID, data:{address:address, duration:duration}});
		}
		
		/**
		 * Set the center position of the map to the specified address. If duration 
		 * is greater than 0, the map will pan for the specified number of milliseconds. 
		 * If the application is unable to geocode the address, the MapEventDispatcher 
		 * class dispatches a "mapGeocodeError" event that contains an array of suggested 
		 * addresses. If the geocode is successful, the map pans to that position. The 
		 * pan length is based on the duration paramater. The zoom levels ranges from 1 to 17, 
		 * with 1 being the lowest, or closest, level and 17 being the highest, or farthest, 
		 * level. If duration is greater than 0, map will pan first and then zoom. 
		 * 
		 * @param address - A string that specifies the street address, city, state and zip code on which to center the map. 
		 * @param zoom - A number from 1 to 17 that specifies the zoom level at which to view the map. 
		 * @param duration - The number of milliseconds in which to pan (or slide) the map to the specified 
		 * location. A duration of 0 represents no panning and the map moves immediately to the new location. 
		 * 
		 * @see com.yahoo.webapis.maps.events.MapEventDispatcher
		 */ 
		public function setCenterByAddressAndZoom(address:String, zoom:Number, duration:Number = 500):void {
			EIBuffer.addCall({method:super.swfDomId + ".setCenterByAddressAndZoom" + super.UUID, data:{address:address, zoom:zoom, duration:duration}});
		}
		
		
		/**
		 * Add a Custome POI (Point of Interest) marker at the specified address. If the application is unable to geocode 
		 * the address, the MapEventDispatcher class dispatches a "mapGeocodeError" event 
		 * that contains an array of suggested addresses. If successful, the MapEventDispatcher
		 * class dispatches a "markerGeocode_Result" event and a marker is displayed on the map.
		 * 
		 * @param address - A string that specifies the postal address at which to place the marker on the map. 
		 * @param index - The index string is the marker's index, or label. It is usually a single character 
		 * string such as "A" or "B".
		 * @param title - The title parameter (string) that is a title that appears when you roll the mouse cursor 
		 * over the marker.
		 * @param description - The description (string) describes the marker when you click it. This parameter supports 
		 * Flash textfield HTML formatting.
		 * @param markerColor - The markerColor (number) is a hexadecimal number that specifies the marker's body color when 
		 * the mouse is not over the marker. It also specifies the stroke when the marker expands to display the 
		 * title or the description.
		 * @param strokeColor - The strokeColor (number) specifies the hexadecimal number that represents the marker's 
		 * stroke color (or outline color) when the mouse is over the marker. It becomes the body color when you 
		 * roll the mouse over the marker to display the title or click the marker to display the description.
		 * 
		 * @see com.yahoo.webapis.events.MapEventDispatcher
		 */ 
		public function addCustomPOIMarker(address:String, index:String, title:String, description:String, markerColor:Number, strokeColor:Number):void {
			EIBuffer.addCall({method:super.swfDomId + ".addMarkerByAddress" + super.UUID, data:{address:address, index:index, title:title, description:description, markerColor:markerColor, strokeColor:strokeColor}});
		}
		
		/**
		 * Add a custom swf marker at the specified address. If the application is unable to geocode 
		 * the address, the MapEventDispatcher class dispatches a "mapGeocodeError" event 
		 * that contains an array of suggested addresses. If successful, the MapEventDispatcher
		 * class dispatches a "markerGeocode_Result" event and a marker is displayed on the map.
		 * 
		 * @param address - A string that specifies the postal address at which to place the marker on the map. 
		 * @param markerObj - An object containing a url to the custom swf marker and a reference id.
		 * @example addSWFMarkerByAddress(addressTextInput.text, {url:'customMarker.swf', ref:'myMark'});
		 * @see com.yahoo.webapis.events.MapEventDispatcher
		 */ 
		public function addSWFMarkerByAddress(address:String, markerObj:Object):void {
			ExternalInterface.addCallback( 'addSWFMarkerByAddress_Result' + super.UUID, addSWFMarkerByAddress_Result );
			EIBuffer.addCall({method:super.swfDomId + ".addSWFMarkerByAddress" + super.UUID, data:{address:address, markerObj:markerObj}});
		}
		
		private function addSWFMarkerByAddress_Result():void {
			dispatchEvent(new Event('onSWFMarkerAdded'));
		}
		
		/**
		 * Add an image marker at the specified address. If the application is unable to geocode 
		 * the address, the MapEventDispatcher class dispatches a "mapGeocodeError" event 
		 * that contains an array of suggested addresses. If successful, the MapEventDispatcher
		 * class dispatches a "markerGeocode_Result" event and a marker is displayed on the map.
		 * 
		 * @param address - A string that specifies the postal address at which to place the marker on the map. 
		 * @param markerObj - An object containing a url to the image that will be loaded as a marker.
		 * @example addImageMarkerByAddress(addressTextInput.text, {url:'customMarker.swf'});
		 * @see com.yahoo.webapis.events.MapEventDispatcher
		 */
		public function addImageMarkerByAddress(address:String, markerObj:Object):void {
			EIBuffer.addCall({method:super.swfDomId + ".addImageMarkerByAddress" + super.UUID, data:{address:address, markerObj:markerObj}});
		}

		/**
		 * Add an way point marker at the specified address. If the application is unable to geocode 
		 * the address, the MapEventDispatcher class dispatches a "mapGeocodeError" event 
		 * that contains an array of suggested addresses. If successful, the MapEventDispatcher
		 * class dispatches a "markerGeocode_Result" event and a marker is displayed on the map.
		 * 
		 * @param address - A string that specifies the postal address at which to place the marker on the map. 
		 * @param markerObj - An object containing a way pint index (a single character string (i.e. 'A' or '1')).
		 * @example addWayPointMarker(addressTextInput.text, {waypointIndex:'A'});
		 * @see com.yahoo.webapis.events.MapEventDispatcher
		 */
		public function addWayPointMarker(address:String, markerObj:Object):void {
			EIBuffer.addCall({method:super.swfDomId + ".addWayPointMarker" + super.UUID, data:{address:address, markerObj:markerObj}});
		}
		
		public function setMapView(view:String):void {
			EIBuffer.addCall({method:super.swfDomId + ".setView" + super.UUID, data:view});
		}
		
		/**
		 * This method removes all markers that have been added to the map.
		 * 
		 */
		public function removeAllMarkers():void {
			EIBuffer.addCall({method:super.swfDomId + ".removeAllMarkers" + super.UUID});
		}
		
	}
}