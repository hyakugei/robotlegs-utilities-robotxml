package com.josyule.utilities.robotxml.commands 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Command;

	public class RecordNewInjectionCommandTest extends TestCase 
	{
		private var instance:RecordNewInjectionCommand;

		public function RecordNewInjectionCommandTest(methodName:String=null)
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new RecordNewInjectionCommand();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is RecordNewInjectionCommand", instance is RecordNewInjectionCommand);
		}
		
		public function testIsCommand():void
		{
			assertTrue("instance is robotlegs Command", instance is Command);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
		public function testExecute():void 
		{
			assertTrue("Execute returns void", (instance.execute() == void));
		}
	}
}