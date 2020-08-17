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
	
	/**
	 * This class communicates with the AS2 methods found in the 
	 * com.yahoo.maps.Widget package. This class extends
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
	 * @see com.yahoo.maps.Widget
	*/
	public class Widgets extends AbstractMethod {
		
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
		public function Widgets(service:YahooMapService):void {
			super(service.UUID, service.swfDomId);	
		}
		
		/**
		 * The NavigatorWidget class lets users zoom and pan the map based on a small 
		 * mini-map that appears on the map surface.
		 * 
		 * @param bool - A boolean value that determines if the Navigator Widget will be
		 * shown (true) or removed (false).
		 */ 
		public function showNavigatorWidget(bool:Boolean = true):void {
			if (bool) {
				EIBuffer.addCall({method:super.swfDomId + '.showNavigatorWidget' + super.UUID});
			} else {
				hideNavigatorWidget();
			}
		}
		
		/**
		 * Removes the NavigatorWidget from the map.
		 */ 
		public function hideNavigatorWidget():void {
			EIBuffer.addCall({method:super.swfDomId + '.hideNavigatorWidget' + super.UUID})
		}
		
		/**
		 * A widget that shows all the tools that have been added to the map by using 
		 * Map.addTool() . It also allows users to select a tool and have that tool 
		 * be set as the currently active tool.
		 * 
		 * @param bool - A boolean value that determines if the ToolBarWidget will be
		 * shown (true) or removed (false).
		 */ 
		public function showToolBarWidget(bool:Boolean = true):void {
			if (bool) { 
				EIBuffer.addCall({method:super.swfDomId + '.showToolBarWidget' + super.UUID});
			} else {
				hideToolBarWidget()
			}
		}
		
		/**
		 * Removes the ToolBarWidget from the map.
		 */ 
		public function hideToolBarWidget():void {
			EIBuffer.addCall({method:super.swfDomId + '.hideToolBarWidget' + super.UUID})
		}
		
		/**
		 * The SatelliteControlWidget class allows an end user to switch between different 
		 * mapViewTypes.
		 * 
		 * @param bool - A boolean value that determines if the SatelliteControlWidget will be
		 * shown (true) or removed (false).
		 */ 
		public function showSatelliteControlWidget(bool:Boolean = true):void {
			if (bool) {
				EIBuffer.addCall({method:super.swfDomId + '.showSatelliteControlWidget' + super.UUID});
			} else {
				hideSatelliteControlWidget();
			}
		}
		
		/**
		 * Removes the SatelliteControlWidget from the map.
		 */ 
		public function hideSatelliteControlWidget():void {
			EIBuffer.addCall({method:super.swfDomId + '.hideSatelliteControlWidget' + super.UUID})
		}
		
	}
}