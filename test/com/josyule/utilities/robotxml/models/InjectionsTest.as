package com.josyule.utilities.robotxml.models 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Actor;

	public class InjectionsTest extends TestCase 
	{
		private var injections:Injections;

		public function InjectionsTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			injections = new Injections();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			injections = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("injections is Injections", injections is Injections);
		}
		
		public function testIsModel():void
		{
			assertTrue("injections is robotlegs Model", injections is Model);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}