package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class UpdateButtonTest extends TestCase 
	{
		private var instance:UpdateButton;

		public function UpdateButtonTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new UpdateButton();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is UpdateButton", instance is UpdateButton);
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