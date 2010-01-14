package com.josyule.utilities.robotxml.models 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Actor;

	public class LocationTest extends TestCase 
	{
		private var location:Location;

		public function LocationTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			location = new Location();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			location = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("location is Location", location is Location);
		}
		
		public function testIsModel():void
		{
			assertTrue("location is robotlegs Model", location is Model);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}