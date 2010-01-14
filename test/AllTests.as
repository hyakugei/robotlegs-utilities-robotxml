package 
{
	/**
	 * This file has been automatically created using
	 * #!/usr/bin/ruby script/generate suite
	 * If you modify it and run this script, your
	 * modifications will be lost!
	 */

	import asunit.framework.TestSuite;
	import com.josyule.utilities.robotxml.RobotXMLContextTest;
	import com.josyule.utilities.robotxml.views.FolderPickerMediatorTest;
	import com.josyule.utilities.robotxml.views.FolderPickerTest;
	import com.josyule.utilities.robotxml.views.RobotXMLMediatorMediatorTest;
	import com.josyule.utilities.robotxml.views.RobotXMLMediatorTest;

	public class AllTests extends TestSuite 
	{

		public function AllTests() 
		{
			addTest(new com.josyule.utilities.robotxml.RobotXMLContextTest());
			addTest(new com.josyule.utilities.robotxml.views.FolderPickerMediatorTest());
			addTest(new com.josyule.utilities.robotxml.views.FolderPickerTest());
			addTest(new com.josyule.utilities.robotxml.views.RobotXMLMediatorMediatorTest());
			addTest(new com.josyule.utilities.robotxml.views.RobotXMLMediatorTest());
		}
	}
}
