package com.josyule.utilities.robotxml 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Context;

	public class RobotXMLContextTest extends TestCase 
	{
		private var instance:RobotXMLContext;

		public function RobotXMLContextTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new RobotXMLContext();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is RobotXMLContext", instance is RobotXMLContext);
		}
        
		public function testIsContext():void
		{
			assertTrue("instance is robotlegs Context", instance is Context);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}