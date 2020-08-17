/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.answers.events
{
	import flash.events.Event;
	
	/**
	* Event class in response to data events from the Yahoo! Answers API.
	* 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Hepp Maccoy 01/04/07
	*/
	public class AnswersResultEvent extends Event
	{
		/** Constant for the event types. */
		public static const QUESTIONS_SEARCH:String = "SearchByQuery";
		public static const QUESTIONS_CATEGORY:String = "SearchByCategory";
		public static const QUESTIONS_USER:String = "SearchByUser";
		public static const GET_QUESTION:String = "GetQuestion";
		public static const GET_ANSWERS:String = "GetAnswers";
		public static const GET_COMMENTS:String = "GetComments";
		
		/**
		 * True if the event is the result of a successful call,
		 * False if the call failed
		 */
		public var success:Boolean;
		
		private var _data:Object;
		
		/**
		 * Constructs a new FlickrResultEvent
		 */
		public function AnswersResultEvent(type:String, inData:Object)
		{
			_data = inData;
									   	
			super( type, bubbles, cancelable );
		}
		
		
		/**
		 * Data
		 */
		public function get data():Object
		{
			return _data;
		}
		
		public function set data( value:Object ):void
		{
			_data = value;
		}
	
	}
	
}