/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.weather
{	/**
	* Yahoo! Weather API Current Conditions Class. This class holds the data about
	* current weather conditions. 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Allen Rabinovich 01/27/07
	*/
	public class CurrentConditions
	{
		/**
		* Current wind conditions
		*/		
		public var wind:Wind;
		/**
		 * Current atmospheric conditions
		 */
		public var atmosphere:Atmosphere;
        /**
        * Current astronomical conditions
        */
		public var astronomy:Astronomy;
        /**
        * Current conditions description
        */
		public var description:String;
		/**
		* Current temperature
		*/
		public var temperature:Number;
		/**
		* URL of an image corresponding to current conditons
		*/
		public var imageURL:String;
		/**
		* Current condition code
		*/		
		public var code:Number;
		/**
		 * CurrentConditions class constructor.
		 */		
		public function CurrentConditions() {	
		wind = new Wind();
		atmosphere = new Atmosphere();
		astronomy = new Astronomy();
		}
		
	}
}