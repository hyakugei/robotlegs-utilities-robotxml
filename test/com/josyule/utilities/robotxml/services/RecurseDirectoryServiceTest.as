package com.josyule.utilities.robotxml.services 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Service;

	public class RecurseDirectoryServiceTest extends TestCase 
	{
		private var instance:RecurseDirectoryService;

		public function RecurseDirectoryServiceTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new RecurseDirectoryService();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is RecurseDirectoryService", instance is RecurseDirectoryService);
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