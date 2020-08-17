/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.maps.events {
	import flash.events.EventDispatcher;
	import flash.events.Event;	
	import flash.external.ExternalInterface;
	import com.yahoo.webapis.maps.events.MapEvent;
	import com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer;

				[Event(name="onSizeChanged", type="MapEvent")]
				[Event(name="onMapMove", type="MapEvent")]
				[Event(name="onPanStart", type="MapEvent")]
				[Event(name="onPanStop", type="MapEvent")]
				[Event(name="onToolAdded", type="MapEvent")]
				[Event(name="onToolChanged", type="MapEvent")]
				[Event(name="onToolRemoved", type="MapEvent")]
				[Event(name="onMapZoom", type="MapEvent")]
				[Event(name="markerGeocode_Result", type="MapEvent")]
				[Event(name="markerGeocode_Error", type="MapEvent")]
				[Event(name="mapGeocode_Result", type="MapEvent")]
				[Event(name="mapGeocodeError", type="MapEvent")]
				[Event(name="swfMarkerAdded", type="MapEvent")]
				[Event(name="onZoomStop", type="MapEvent")]
				[Event(name="onZoomStart", type="MapEvent")]
				[Event(name="dragStart", type="MapEvent")]
				[Event(name="dragStop", type="MapEvent")]
				[Event(name="getCenter_Result", type="MapEvent")]
				[Event(name="getBounds_Result", type="MapEvent")]
				[Event(name="onLocalSearchResult", type="MapEvent")]
				[Event(name="onLocalSearchError", type="MapEvent")]
				[Event(name="onPOIClicked", type="MapEvent")]
				[Event(name="onCustomOverlayLoaded", type="MapEvent")]
				[Event(name="onCustomWidgetLoaded", type="MapEvent")]
				[Event(name="onMapTilesLoaded", type="MapEvent")]
				[Event(name="onMapTypeChanged", type="MapEvent")]
				[Event(name="onNavigatorStateChanged", type="MapEvent")]
				[Event(name="onClick", type="MapEvent")]
				[Event(name="onSetBoundsComplete", type="MapEvent")]
				[Event(name="onWaypointMarkerAdded", type="MapEvent")]
				[Event(name="onMapConfig", type="MapEvent")]
				[Event(name="onMaxZoom", type="MapEvent")]
			        [Event(name="onMinZoom", type="MapEvent")]
	/**
	 * Event class that listens for broadcasted events from the AS2 map
	 * file and broadcasts them to all listening AS3 classes.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9
	 * @author Scott Morgan 02/25/2007
	*/
	public class MapEventDispatcher extends EventDispatcher {
		
		/**
		 * @private
		 * Access to ExternalInterfaceBuffer class which proxies methods passed to the AS2 map
		 */
		private var EIBuffer:ExternalInterfaceBuffer = ExternalInterfaceBuffer.getInstance();
		
		private var _instance:Object;
		
		/**
		 * Constructor.
		 * 
		 *  @param UUID integer that is used to identify calls being sent between AVMs
		 */
		public function MapEventDispatcher(instance:Object):void {
			_instance = instance;
			setListeners(instance.UUID);
		}
		
		/**
		 * @private
		 * Setup for all possible events being sent from the AS2 maps swf.
		 * 
		 *  @param UUID integer that is used to identify calls being sent between AVMs
		 */
		private function setListeners(UUID:int):void {
			ExternalInterface.addCallback('onSizeChanged' + UUID, onSizeChanged);
			ExternalInterface.addCallback('onMapMove' + UUID, onMapMove);
			ExternalInterface.addCallback('onPanStart' + UUID, onPanStart);
			ExternalInterface.addCallback('onPanStop' + UUID, onPanStop);
			ExternalInterface.addCallback('onToolAdded' + UUID, onToolAdded);
			ExternalInterface.addCallback('onToolChanged' + UUID, onToolChanged);
			ExternalInterface.addCallback('onToolRemoved' + UUID, onToolRemoved);
			ExternalInterface.addCallback('onMapZoom' + UUID, onMapZoom);
			ExternalInterface.addCallback('markerGeocode_Result' + UUID, markerGeocode_Result);
			ExternalInterface.addCallback('markerGeocode_Error' + UUID, markerGeocode_Error);
			ExternalInterface.addCallback('mapGeocode_Result' + UUID, mapGeocode_Result);
			ExternalInterface.addCallback('mapGeocodeError' + UUID, mapGeocodeError);
			ExternalInterface.addCallback('swfMarkerAdded' + UUID, swfMarkerAdded);
			ExternalInterface.addCallback('onZoomStop' + UUID, onZoomStop);
			ExternalInterface.addCallback('onZoomStart' + UUID, onZoomStart);
			ExternalInterface.addCallback('dragStart' + UUID, dragStart);
			ExternalInterface.addCallback('dragStop' + UUID, dragStop);
			ExternalInterface.addCallback("getCenter_Result" + UUID, getCenter_Result);
			ExternalInterface.addCallback("getBounds_Result" + UUID, getBounds_Result);
			ExternalInterface.addCallback("onLocalSearchResult" + UUID, onLocalSearchResult);
			ExternalInterface.addCallback("onLocalSearchError" + UUID, onLocalSearchError);
			
			//new Events add 03/08/2007
			ExternalInterface.addCallback("onPOIClicked" + UUID, onPOIClicked);
			ExternalInterface.addCallback("onCustomOverlayLoaded" + UUID, onCustomOverlayLoaded);
			ExternalInterface.addCallback("onCustomWidgetLoaded" + UUID, onCustomWidgetLoaded);
			ExternalInterface.addCallback("onMapTilesLoaded" + UUID, onMapTilesLoaded);
			ExternalInterface.addCallback("onMapTypeChanged" + UUID, onMapTypeChanged);
			ExternalInterface.addCallback("onNavigatorStateChanged" + UUID, onNavigatorStateChanged);
			ExternalInterface.addCallback("onClick" + UUID, onClick);
			ExternalInterface.addCallback("onSetBoundsComplete" + UUID, onSetBoundsComplete);
			ExternalInterface.addCallback("onWaypointMarkerAdded" + UUID, onWaypointMarkerAdded);
			ExternalInterface.addCallback("onMapConfig" + UUID, onMapConfig);
			ExternalInterface.addCallback("onMaxZoom" + UUID, onMaxZoom);
			ExternalInterface.addCallback("onMinZoom" + UUID, onMinZoom);			
			
		}
		
		/**
		 * @private
		 * Event dispatched the map changes size.
		 * 
		 * @param ev object containing the new width and height
		 */
		private function onSizeChanged(ev:Object):void {
			dispatchEvent(new MapEvent('onSizeChanged', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when and while the map is moving. Dispatched when the map 
		 * is dragged and when it pans (programatical movement).
		 * 
		 * @param ev object containing the following map position properties when, center, 
		 * bounds, and type
		 */
		private function onMapMove(ev:Object):void {
			dispatchEvent(new MapEvent('onMapMove', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when panning on the map has started.
		 * 
		 * @param ev object containing the type (panStart) property.
		 */
		private function onPanStart(ev:Object):void {
			dispatchEvent(new MapEvent('onPanStart', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when panning on the map has stopped.
		 */
		private function onPanStop(ev:Object):void {
			dispatchEvent(new MapEvent('onPanStop', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a tool has been added to the map interface.
		 */
		private function onToolAdded(ev:Object):void {
			dispatchEvent(new MapEvent('onToolAdded', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a tool has been changed on the map interface.
		 */
		private function onToolChanged(ev:Object):void {
			dispatchEvent(new MapEvent('onToolChanged', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a tool has been removed from the map interface.
		 */
		private function onToolRemoved(ev:Object):void {
			dispatchEvent(new MapEvent('onToolRemoved', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the map is zooming.
		 * 
		 * @param ev Object containing startZoomLevel, currentZoomLevel, 
		 * and endZoomLevel
		 */
		private function onMapZoom(ev:Object):void {
			dispatchEvent(new MapEvent('onMapZoom', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a marker is added to the map at a specified address
		 * 
		 * @param ev Object containing map position and location specific data
		 */
		private function markerGeocode_Result(ev:Object):void {
			dispatchEvent(new MapEvent('markerGeocode_Result', ev));
		}
		
		private function markerGeocode_Error(ev:Object):void {
			dispatchEvent(new MapEvent('markerGeocode_Error', ev));
		}
		
		private function mapGeocode_Result(ev:Object):void {
			dispatchEvent(new MapEvent('mapGeocode_Result', ev));
		}
		
		private function mapGeocodeError(ev:Object):void {
			if (ev != null) {
				dispatchEvent(new MapEvent('mapGeocodeError', ev));
			} else {
				dispatchEvent(new MapEvent('mapGeocodeError', undefined));
			}
		}
		
		/**
		 * @private
		 * Event dispatched once a custom swf marker is loaded into the map.
		 * 
		 * @param ev Object containing event type and a reference id.
		 */
		private function swfMarkerAdded(ev:Object):void {
			dispatchEvent(new MapEvent('addSWFMarkerByAddress_Result', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the map has stopped zooming.
		 * 
		 * @param ev Object containing startZoomLevel, currentZoomLevel, 
		 * endZoomLevel, and bounds.
		 */
		private function onZoomStop(ev:Object):void {
			dispatchEvent(new MapEvent('onZoomStop', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the map has stopped zooming.
		 * 
		 * @param ev Object containing startZoomLevel and endZoomLevel
		 */
		private function onZoomStart(ev:Object):void {
			dispatchEvent(new MapEvent('onZoomStart', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the user starts to drag the map.
		 * 
		 * @param ev Object containing startZoomLevel and endZoomLevel
		 */
		private function dragStart(ev:Object):void {
			dispatchEvent(new Event('dragStart'));
		}
		
		/**
		 * @private
		 * Event dispatched when the user stops dragging the map.
		 * 
		 * @param ev Object containing startZoomLevel and endZoomLevel
		 */
		private function dragStop(ev:Object):void {
			dispatchEvent(new Event('dragStop'));
		}
		
		/**
		 * @private
		 * Event dispatched when the current center position is dispatched.
		 * 
		 * @param ev Object containing _distance, x, and y of the current map position.
		 */
		private function getCenter_Result(ev:Object):void {			
			dispatchEvent(new MapEvent('onMapMove', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the current map bounds are dispatched.
		 * 
		 * @param ev bounds object containing maxLon, minLon, maxLat, minLat of the current map position.
		 */
		private function getBounds_Result(ev:Object):void {
			dispatchEvent(new MapEvent('onBoundsReturned', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the current map bounds are dispatched.
		 * 
		 * @param object containing type and source
		 */
		private function onLocalSearchResult(ev:Object):void {
			dispatchEvent(new MapEvent('onLocalSearchResult', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when there is a local search error
		 */
		private function onLocalSearchError(ev:Object):void {
			dispatchEvent(new MapEvent('onLocalSearchError', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a POI Marker is clicked
		 */
		private function onPOIClicked(ev:Object):void {
			dispatchEvent(new MapEvent('onPOIClicked', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a custom overlay is loaded
		 */
		private function onCustomOverlayLoaded(ev:Object):void {
			dispatchEvent(new MapEvent('onCustomOverlayLoaded', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when a custom widget is loaded
		 */
		private function onCustomWidgetLoaded(ev:Object):void {
			dispatchEvent(new MapEvent('onCustomWidgetLoaded', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when all the tiles are loaded
		 */
		private function onMapTilesLoaded(ev:Object):void {
			dispatchEvent(new MapEvent('onMapTilesLoaded', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the map type is changed
		 */
		private function onMapTypeChanged(ev:Object):void {
			dispatchEvent(new MapEvent('onMapTypeChanged', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the navigator state is changed (open or closed)
		 */
		private function onNavigatorStateChanged(ev:Object):void {
			dispatchEvent(new MapEvent('onNavigatorStateChanged', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the map is clicked or double clicked, click points lat and lon returned
		 */
		private function onClick(ev:Object):void {
			dispatchEvent(new MapEvent('onClick', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when setBounds is complete
		 */
		private function onSetBoundsComplete(ev:Object):void {
			dispatchEvent(new MapEvent('onSetBoundsComplete', ev));
		}
		
		/**
		 * @private
		 * Event dispatched when the way point marker is added
		 */
		private function onWaypointMarkerAdded(ev:Object):void {
			dispatchEvent(new MapEvent('onWaypointMarkerAdded', ev));
		}
		
		/**
		 * @private
		 * An object with specific properties that override the maps existing labels. 
		 * The expected properties in the object are mapLabel, hybridLabel, 
		 * satelliteLabel, countryLabel, stateLabel, cityLabel, streetLabel, 
		 * rateItLabel and moreInfoLabel.
		 */
		private function onMapConfig(ev:Object):void {
			dispatchEvent(new MapEvent('onMapConfig', ev));
		}
		
		/**
		 * @private
		 * A number that contains the minimum zoom level of the map.
		 */
		private function onMinZoom(ev:Object):void {
			dispatchEvent(new MapEvent('onMinZoom', ev));
		}
		
		/**
		 * @private
		 * A number that contains the max zoom level of the map.
		 */
		private function onMaxZoom(ev:Object):void {
			dispatchEvent(new MapEvent('onMaxZoom', ev));
		}
		
	}
}