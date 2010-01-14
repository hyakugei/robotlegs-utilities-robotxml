package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;

	public class RobotXMLMediatorMediatorTest extends TestCase 
	{
		private var instanceMediator:RobotXMLMediatorMediator;

		public function RobotXMLMediatorMediatorTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instanceMediator = new RobotXMLMediatorMediator();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instanceMediator = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instanceMediator is RobotXMLMediatorMediator", instanceMediator is RobotXMLMediatorMediator);
		}
        
		public function testIsMediator():void
		{
			assertTrue("instanceMediator is robotlegs Mediator", instanceMediator is Mediator);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}