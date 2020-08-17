/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.maps.utils {
	
	import flash.external.ExternalInterface;
	import flash.utils.setInterval;
	import flash.utils.clearInterval;
	
	/**
	 * Utility to buffer outgoing ExternalInterface calls. Simoltaneous
	 * calls get dropped if they aren't buffered. It seems both Firefox and
	 * IE's script engine gets overloaded and either drops calls or 
	 * throws a javascript error. This buffer ensures the script engines
	 * only get one call at a time.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9
	 * @author Scott Morgan 02/25/2007
	 * 
	 * @see flash.external.ExternalInterface
	*/
	public class ExternalInterfaceBuffer {
	
		/**
		 * @private
		 * A singleton class that is accessed by almost all classes in this
		 * communication kit. This static variable gives access to this class
		 * ensuring there is only ever one instance of it.
		 * 
		 */
        private static var instance:ExternalInterfaceBuffer = new ExternalInterfaceBuffer();
        
        /**
		 * @private
		 * An array of methods waiting in the queue to be called. Once they
		 * are called they are removed from the array.
		 * 
		 */
        private var methodQueue:Array = new Array();
        
        /**
		 * @private
		 * Access to the interval that runs while the methods are being called.
		 * When all methods in the queue are called this variable is used to 
		 * clear the interval.
		 * 
		 */
        private var methodCallInterval:Number;
		
		/**
		 * Constructor
		 * If an instance of this class already exists an error message is thrown
		 * informing that this class should only be accessed through the getInstance()
		 * method.
		 * 
		 * @see com.yahoo.webapis.maps.utils.ExternalInterface.getInstance()
		 */
        public function ExternalInterfaceBuffer() {
                if( instance ) throw new Error( "Singleton and can only be accessed through Singleton.getInstance()" ); 
        }

		/**
		 * @public
		 * This static method is what makes this class a singleton, it ensures that only 
		 * one instance of this class is instantiated.
		 * 
		 */
        public static function getInstance():ExternalInterfaceBuffer {
                return instance;
        }
        
        /**
		 * @public
		 * Method used to add calls to the methodQueue array. If the length of the methodQueue
		 * array is greater than 0 the methodChurn interval is kicked off and runs every 50
		 * milliseconds until the methodQueue's length is 0 at which point the interval is
		 * cleared.
		 * 
		 * @param obj and object containing a method string, and a data 
		 * object. The method string is the method the ExternalInterface will 
		 * call and the data object is the object that will be passed to the 
		 * calling method as an argument.
		 */
        public function addCall(obj:Object):void {
        	methodQueue.push(obj);
        	if (isNaN(methodCallInterval) || methodCallInterval == 0) {
        		methodCallInterval = setInterval(methodChurn, 50);
        	}
        }
        
        /**
		 * @private
		 * This method is called every 50 milliseconds until the methodQueue array is empty.
		 * This method sends the first method listed in the methodQueue array to the
		 * ExternalInterface.call method.
		 * 
		 * @see flash.external.ExternalInterface.call
		 */
        private function methodChurn():void {
        	ExternalInterface.call(methodQueue[0].method, methodQueue[0].data);
        	methodQueue.shift();
        	if (methodQueue.length == 0) {
        		clearInterval(methodCallInterval);
        		methodCallInterval = undefined;
        	}
        }
	}
}