package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class FilePickerTest extends TestCase 
	{
		private var filePicker:FilePicker;

		public function FilePickerTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			filePicker = new FilePicker();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			filePicker = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("filePicker is FilePicker", filePicker is FilePicker);
		}
        
		public function testIsSprite():void
		{
			assertTrue("filePicker is Sprite", filePicker is Sprite);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}