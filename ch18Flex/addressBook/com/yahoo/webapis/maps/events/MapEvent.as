/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.maps.events {
	
	import flash.events.Event;
	import flash.external.ExternalInterface;
	
	/**
	* Event class in response to events from the Yahoo! Maps API.
	* 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Scott Morgan 02/25/2007
	*/
	public class MapEvent extends Event {
		
		/**
		 * The data object returned with all events. If no data is returned 
		 * the value will be null
		 */
		private var _lastResult:Object;
		
		public function set lastResult(obj:Object):void {
			_lastResult = obj;
		}
		
		public function get lastResult():Object {
			return _lastResult;
		}
		
		/**
		 * Constructs a new WeatherResultEvent
		 */
		public function MapEvent(type:String, lastResult:Object=null) {
			super(type);
			this.lastResult = lastResult;		
		}
	}
}
