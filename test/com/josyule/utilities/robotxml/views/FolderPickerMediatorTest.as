package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;

	public class FolderPickerMediatorTest extends TestCase 
	{
		private var instanceMediator:FolderPickerMediator;

		public function FolderPickerMediatorTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instanceMediator = new FolderPickerMediator();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instanceMediator = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instanceMediator is FolderPickerMediator", instanceMediator is FolderPickerMediator);
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