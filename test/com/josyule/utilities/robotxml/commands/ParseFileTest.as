package com.josyule.utilities.robotxml.commands 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Command;

	public class ParseFileTest extends TestCase 
	{
		private var parseFile:ParseFile;

		public function ParseFileTest(methodName:String=null)
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			parseFile = new ParseFile();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			parseFile = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("parseFile is ParseFile", parseFile is ParseFile);
		}
		
		public function testIsCommand():void
		{
			assertTrue("parseFile is robotlegs Command", parseFile is Command);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
		public function testExecute():void 
		{
			assertTrue("Execute returns void", (parseFile.execute() == void));
		}
	}
}