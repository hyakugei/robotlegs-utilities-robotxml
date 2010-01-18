package com.josyule.utilities.robotxml.services 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Service;

	public class RobotLegsParserServiceTest extends TestCase 
	{
		private var instance:RobotLegsParserService;

		public function RobotLegsParserServiceTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new RobotLegsParserService();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is RobotLegsParserService", instance is RobotLegsParserService);
		}
		
		public function testIsService():void
		{
			assertTrue("instance is robotlegs Service", instance is Service);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}