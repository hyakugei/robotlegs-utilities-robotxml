package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class FolderPickerTest extends TestCase 
	{
		private var instance:FolderPicker;

		public function FolderPickerTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new FolderPicker();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is FolderPicker", instance is FolderPicker);
		}
        
		public function testIsSprite():void
		{
			assertTrue("instance is Sprite", instance is Sprite);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}