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
	import com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer;
	import flash.external.ExternalInterface;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.events.EventPhase;
	
	/**
	 * This class communicates with the AS2 methods found in the 
	 * com.yahoo.maps.Overlays package. This class extends
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
	 * @see com.yahoo.maps.Overlays
	*/
	public class Overlays extends AbstractMethod {
		
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
		public function Overlays(service:YahooMapService):void {
			super(service.UUID, service.swfDomId);
			setupListeners();
		}
		
		/**
		 * Add an overlay to the map. Overlays are images that are laid over the map to 
		 * show driving directions, traffic conditions and so on.
		 * 
		 * @param overlay - An instance of an Overlay object: CustomSWFOverlay, 
		 * GeoRSSOverlay, LocalSearchOverlay, or Traffic Overlay 
		 * 
		 */ 
		public function showOverlay(overlay:Object):void {
			EIBuffer.addCall({method:super.swfDomId + ".addOverlay" + super.UUID, data:overlay})
		}
		
		/**
		 * Shows the traffic incidents reported for the currently viewable map area. This overlay 
		 * is updated automatically whenever the map moves.
		 * 
		 * @param bool - A boolean value that determines if the TrafficOverlay will be
		 * shown (true) or removed (false).
		 */ 
		public function showTrafficOverlay(bool:Boolean = true):void {
			if (bool) {
				EIBuffer.addCall({method:super.swfDomId + ".addTrafficOverlay" + super.UUID});
			} else {
				removeTrafficOverlay()
			}
		}
		
		/**
		 * Removes the TrafficOverlay from the map.
		 */ 
		public function removeTrafficOverlay():void {
			EIBuffer.addCall({method:super.swfDomId + ".removeTrafficOverlay" + super.UUID});
		}
		
		/**
		 * The PolylineOverlay class allows developers to plot points, draw lines and 
		 * fill shapes on the map to create a new layer of visual location information.
		 * 
		 * @param xml - The url (string) specifies the URL of the XML file containing the 
		 * LatLon points. 
		 */ 
		public function showPolylineOverlay(xml:String):void {
			EIBuffer.addCall({method:super.swfDomId + ".addPolylineOverlay" + super.UUID, data:xml});
		}
		
		/**
		 * Removes the PolylineOverlay from the map.
		 */ 
		public function removePolylineOverlay():void {
			EIBuffer.addCall({method:super.swfDomId + ".removePolylineOverlay" + super.UUID});
		}
		
		/**
		 * Similar to CustomSWFMarker, a custom overlay SWF component can be loaded by 
		 * creating a new CustomSWFOverlay
		 * 
		 * @param swf - The url (string) specifies the URL of the swf, jpg, png, or gif file 
		 * to be used as the custom overlay. 
		 */ 
		public function customSwfOverlay(swf:String):void {
			EIBuffer.addCall({method:super.swfDomId + ".addCustomSwfOverlay" + super.UUID, data:swf});
		}
		
		/**
		 * Removes the CustomSwfOverlay from the map.
		 */ 
		public function removeCustomSwfOverlay():void {
			EIBuffer.addCall({method:super.swfDomId + ".removeCustomSwfOverlay" + super.UUID});
		}	
		
		/**
		 * The GeoRSSOverlay class allows you to load a document and plot a feed of 
		 * GeoRSS items on the map.
		 * 
		 * @param xml - The url (string) specifies the URL of the RSS feed to load. The url 
		 * provided must be absolute, not relative. To avoid the need for a crossdomain 
		 * policy file on the server hosting the rss feed, the request is proxied through 
		 * a Yahoo! server.  
		 */ 
		public function showGeoRssOverlay(xml:String):void {
			EIBuffer.addCall({method:super.swfDomId + ".addGeoRssOverlay" + super.UUID, data:xml});
		}
		
		/**
		 * Removes the GeoRssOverlay from the map.
		 */ 
		public function removeGeoRssOverlay():void {
			EIBuffer.addCall({method:super.swfDomId + ".removeGeoRssOverlay" + super.UUID});
		}
		
		/**
		 * The LocalSearchOverlay class allows developers to access the large database of 
		 * business descriptions, ratings, and locations and plot them on a map.
		 * 
		 * @param searchTerms - A string. The search terms used to search for businesses 
		 * @param latlon - And object that contains the latitude and longitude of a point 
		 * on the map you would like base this search on. 
		 * @param startIndex - A number The index of the first result out of the total search 
		 * results available that you would like to retrieve.
		 * @param results - A number. The number of results that you would like to retrieve 
		 * @param radius- A number. The radius in miles that you would like apply to search 
		 * results. If null, the radius of the current viewable map is used.
		 * @param categoryFilter - A string. The category filter key used to filter search 
		 * results 
		 * @param ratingFilter - A string. The rating filter key used to filter search results 
		 *
		 */ 
		public function localSearchOverlay(searchTerms:String, latlon:Object, startIndex:Number = 1, results:Number = 10, radius:Number = undefined, categoryFilter:String = null, ratingFilter:String = null):void {
			EIBuffer.addCall({method:super.swfDomId + ".localSearchOverlay" + super.UUID, data:{searchTerms:searchTerms, latlon:latlon, startIndex:startIndex, results:results, radius:radius, categoryFilter:categoryFilter, ratingFilter:ratingFilter}});
		}
		
		/**
		 * Removes the LocalSearchOverlay from the map.
		 */ 
		public function removeLocalSearchOverlay():void {
			EIBuffer.addCall({method:super.swfDomId + ".removeLocalSearchOverlay" + super.UUID});
		}
		
		
		/**
		 * @private
		 */ 
		private function setupListeners():void {
			ExternalInterface.addCallback("onLocalSearch_Result" + super.UUID, onLocalSearch_Result);
			ExternalInterface.addCallback("onLocalSearch_Error" + super.UUID, onLocalSearch_Error);
		}
		/**
		 * @private
		 */ 
		private function onLocalSearch_Result(ev:Object):void {
			dispatchEvent(new MapEvent('onLocalSearchResult', ev));	
		}
		/**
		 * @private
		 */ 
		private function onLocalSearch_Error(ev:Object):void {
			dispatchEvent(new MapEvent('onLocalSearchError', ev))
		}
		
	}
}