package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;

	public class FilePickerMediatorTest extends TestCase 
	{
		private var filePickerMediator:FilePickerMediator;

		public function FilePickerMediatorTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			filePickerMediator = new FilePickerMediator();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			filePickerMediator = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("filePickerMediator is FilePickerMediator", filePickerMediator is FilePickerMediator);
		}
        
		public function testIsMediator():void
		{
			assertTrue("filePickerMediator is robotlegs Mediator", filePickerMediator is Mediator);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}