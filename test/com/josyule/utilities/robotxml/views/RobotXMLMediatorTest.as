package com.josyule.utilities.robotxml.views 
{

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class RobotXMLMediatorTest extends TestCase 
	{
		private var instance:RobotXMLMediator;

		public function RobotXMLMediatorTest(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			instance = new RobotXMLMediator();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("instance is RobotXMLMediator", instance is RobotXMLMediator);
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