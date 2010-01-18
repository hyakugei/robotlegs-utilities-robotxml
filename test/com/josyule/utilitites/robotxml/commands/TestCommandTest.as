package com.josyule.utilitites.robotxml.commands 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Command;

	public class TestCommandTest extends TestCase 
	{
		private var instance:TestCommand;

		public function TestCommandTest(methodName:String=null)
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new TestCommand();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is TestCommand", instance is TestCommand);
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