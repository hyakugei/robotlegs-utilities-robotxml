﻿package {			import flash.display.Sprite;		import com.josyule.utilities.robotxml.RobotXMLContext;	import com.josyule.utilities.robotxml.views.*		public class RobotXML extends Sprite {				var context:RobotXMLContext;		var folderPicker:FolderPicker;		var filePicker:FilePicker;		var updateButton:UpdateButton;				public function RobotXML() {			//addChild(new RobotXMLSkin.ProjectSprouts() as DisplayObject);			trace("RobotXML instantiated!");			context = new RobotXMLContext(this);		}				public function setupUI():void		{			folderPicker = new FolderPicker();			addChild(folderPicker);						filePicker = new FilePicker();			addChild(filePicker);			filePicker.y = folderPicker.y + 50;						updateButton = new UpdateButton();			addChild(updateButton);			updateButton.y = filePicker.y + 50;		}				}}