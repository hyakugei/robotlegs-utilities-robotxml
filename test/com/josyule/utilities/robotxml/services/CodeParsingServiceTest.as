package com.josyule.utilities.robotxml.services 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Service;

	public class CodeParsingServiceTest extends TestCase 
	{
		private var instance:CodeParsingService;

		public function CodeParsingServiceTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new CodeParsingService();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is CodeParsingService", instance is CodeParsingService);
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