/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
import flash.external.ExternalInterface;

class com.yahoo.webapis.maps.utils.ExternalInterfaceBuffer {
	
	private static var instance:ExternalInterfaceBuffer;
	private static var local:LocalConnection = new LocalConnection();
	private var methodQueue:Array = [];
	private var methodCallInterval:Number;

	public function ExternalInterfaceBuffer() {

	}

	public static function getInstance():ExternalInterfaceBuffer {
		if (instance == undefined) {
			instance = new ExternalInterfaceBuffer();
		}
		return instance;
	}
	
	public function addCall(obj:Object):Void {
		methodQueue.push(obj);
		if (methodCallInterval == undefined) {
			methodCallInterval = setInterval(this, 'methodChurn', 125);
		}
	}
	
	private function methodChurn():Void {
		//ExternalInterface.call('alert', methodQueue[0].method);
		ExternalInterface.call(methodQueue[0].method, methodQueue[0].data);
		methodQueue.shift();
		
		if (methodQueue.length == 0 || methodQueue.length == undefined) {
			clearInterval(methodCallInterval);
			methodCallInterval = undefined;
		}
	}
}