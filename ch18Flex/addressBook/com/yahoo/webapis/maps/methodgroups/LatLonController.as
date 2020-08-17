/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.maps.methodgroups {
	
	import com.yahoo.webapis.maps.methodgroups.AbstractMethod;
	import com.yahoo.webapis.maps.YahooMapService;
	import com.yahoo.webapis.maps.events.MapEvent;
	import com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer
	import flash.external.ExternalInterface;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.events.EventPhase;
	
	
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
	 * @see com.yahoo.maps.LatLon
	*/
	public class LatLonController extends AbstractMethod {
		
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
		public function LatLonController(service:YahooMapService):void {
			super(service.UUID, service.swfDomId);
		}
		
		/**
		 * Center the map on the coordinates of latitude and longitude specified 
		 * by latlon. If duration is greater than 0, the map pans (or slides to 
		 * the new location).
		 * 
		 * @param lat Number representing the latitude where the map will be positioned.
		 * @param lon Number representing the longitude where the map will be positioned.
		 */ 		
		public function setCenterByLatLon(lat:Number, lon:Number):void {
			EIBuffer.addCall({method:super.swfDomId + ".setCenterByLatLon" + super.UUID, data:{lat:lat, lon:lon}});
		}
		
		/**
		 * Add a marker at the location specified by the latlon parameter. 
		 * 
		 * @param markerClass String that specifies the type of marker to place on the Map. 
		 * This could be a reference to the CustomImageMarker class, CustomPOIMarker class, 
		 * CustomSWFMarker class, WaypointMarker class, or a custom class.
		 * @param lat Number representing the latitude where the map will be positioned.
		 * @param lon Number representing the longitude where the map will be positioned.
		 * @param data An object which contains the parameters to pass to the markerClass’s 
		 * constructor function. 
		 */ 
		public function addMarkerByLatLon(markerClass:String, lat:Number, lon:Number, data:Object):void {
			EIBuffer.addCall({method:super.swfDomId + ".addMarkerByLatLon" + super.UUID, data:{markerClass:markerClass, lat:lat, lon:lon, data:data}});
		}
		
		/**
		 * Center the map on the coordinates of latitude and longitude specified by latlon. 
		 * The zoom levels ranges from 1 to 17, with 1 being the lowest, or closest, level 
		 * and 17 being the highest, or farthest, level. If duration is greater than 0, map 
		 * will pan first and then zoom.  
		 * 
		 * @param lat Number representing the latitude where the map will be positioned.
		 * @param lon Number representing the longitude where the map will be positioned.
		 * @param zoom A number from 1 to 17 that specifies the zoom level at which to view the map.
		 * @param duration The number of milliseconds in which to pan (or slide) the map to the specified 
		 * location. A duration of 0 represents no panning and the map moves immediately to the new location.  
		 */ 
		public function setCenterByLatLonAndZoom(lat:Number, lon:Number, zoom:Number = 4, duration:Number = 500):void {
			EIBuffer.addCall({method:super.swfDomId + ".setCenterByLatLonAndZoom" + super.UUID, data:{lat:lat, lon:lon, zoom:zoom, duration:duration}});
		}
		
		/**
		 * Get the latitude and longitude for the center point of the map. 
		 * The MapEventDispatcher class dispatches an event named getCenter_Result
		 * with an object containing the latitude and latitude center point.  
		 * 
		 * @see com.yahoo.webapis.maps.events.MapEventDispatcher
		 */ 
		public function getCenterLatLon():void {
			EIBuffer.addCall({method:super.swfDomId + ".getCenterLatLon" + super.UUID});
		}
		
		/**
		 * A method that returns an object containing the latitude and longitude
		 * arguments.
		 * 
		 * @param lat A Number representing a latitude point.
		 * @param lon A Number representing a longitude point. 
		 * 
		 * @return An object containing lat (latitude) and lon (longitude)
		 * certain calls require the lat and lon values to be encapsulated.
		 */ 
		public function LatLon(lat:Number, lon:Number):Object {
			return {lat:lat, lon:lon};
		}
		
		/**
		 * A method that returns an object containing the minLat, maxLat, minLon, 
		 * and maxLon of a region of a map.
		 * 
		 * @param minLat A Number representing the minimum latitude point.
		 * @param minLon A Number representing the minimum longitude point.
		 * @param maxLat A Number representing the maximum latitude point.
		 * @param maxLon A Number representing the maximum longitude point.
		 * 
		 * @return An object containing the properties of a LatLonRect Object.
		 * Certain method calls require an encapsulated LatLonRect object.
		 */
		public function LatLonRect(minLat:Number, minLon:Number, maxLat:Number, maxLon:Number):Object {
			return {minLat:minLat, minLon:minLon, maxLat:maxLat, maxLon:maxLon};
		}
		
		/**
		 * Get the LatLonRect object that specifies the current map bounds.
		 * The MapEventDispatcher class dispatches an event named getBounds_Result
		 * with a LatLonRect object. 
		 * 
		 * @see com.yahoo.webapis.maps.events.MapEventDispatcher
		 */ 
		public function getBounds():void {
			EIBuffer.addCall({method:super.swfDomId + ".getBounds" + super.UUID});
		}
		
		/**
		 * Sets the map to the center of a rectangle specified by a LatLonRect object. 
		 * 
		 * @param bounds A LatLonRect object that specifies the desired bounds for the 
		 * viewable map surface. 
		 */ 
		public function setBounds(bounds:Object):void {
			EIBuffer.addCall({method:super.swfDomId + ".setBounds" + super.UUID, data:bounds});
		} 
		
	}
}