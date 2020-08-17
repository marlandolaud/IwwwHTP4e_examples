/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.weather
{
	/**
	* Yahoo! Weather API Forecast Conditions Class. This class holds the data about
	* forecast conditions. 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Allen Rabinovich 01/27/07
	*/
	public class ForecastConditions
	{
		/**
		* The date for which the forecast is made.
		*/
		public var date:Date;
		/**
		 * The low temperature forecast
		 */
		public var low:Number;
		/**
		 * The high temperature forecast
		 */
		public var high:Number;
		/**
		 * Forecast description
		 */
		public var description:String;
		/**
		* URL of an image corresponding to forecast conditions.
		*/
		public var imageURL:String;
		/**
		* Condition code.
		*/
		public var code:Number;
		/**
		 * ForecastConditions class constructor
		 */		
		public function ForecastConditions () {
			date = new Date();
		}
	}
}