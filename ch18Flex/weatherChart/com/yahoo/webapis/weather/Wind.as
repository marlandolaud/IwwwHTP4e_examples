/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.weather
{
	/**
	* Yahoo! Weather API Wind Class. This class holds the data about
	* wind conditions. 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Allen Rabinovich 01/27/07
	*/
	public class Wind
	{
		/**
		* The current wind chill, in degrees (scale determined by Weather.units).
		*/		
		public var chill:Number;
		/**
		* The wind direction, in degrees from the North.
		*/		
		public var direction:Number;
		/**
		* The wind speed, in units of distance per hour (scale determined by Weather.units).
		*/		
		public var speed:Number;
		
		/**
		 * The Wind class constructor. 
		 * 
		 */
		public function Wind () {
		}
	}
}