/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.weather
{
		/**
	* Yahoo! Weather API Location Class. This class holds the data about
	* the location associated with current weather conditions. 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Allen Rabinovich 01/27/07
	*/
	public class Location
	{
	/** The city where the weather is being reported.
	 */
		public var city:String;
	/** The region where the weather is being reported.
	 */
		public var region:String;
		/**
		* The country where the weather is being reported.
		*/
		public var country:String;
		/**
		* The longitude corresponding to current weather.
		*/
		public var longitude:Number;
		/**
		* The latitude corresponding to current weather.
		*/		
		public var latitude:Number;
		/**
		 * The Location constructor.
		 */		
		public function Location () {
		}
	}
}