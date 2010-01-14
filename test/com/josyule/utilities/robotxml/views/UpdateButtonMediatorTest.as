package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;

	public class UpdateButtonMediatorTest extends TestCase 
	{
		private var instanceMediator:UpdateButtonMediator;

		public function UpdateButtonMediatorTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instanceMediator = new UpdateButtonMediator();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instanceMediator = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instanceMediator is UpdateButtonMediator", instanceMediator is UpdateButtonMediator);
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