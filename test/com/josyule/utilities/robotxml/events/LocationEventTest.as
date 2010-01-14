package com.josyule.utilities.robotxml.events {

	import asunit.framework.TestCase;

	public class LocationEventTest extends TestCase {
		private var instance:LocationEvent;

		public function LocationEventTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new LocationEvent();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is LocationEvent", instance is LocationEvent);
		}

		public function testFailure():void {
			assertTrue("Failing test", false);
		}
	}
}