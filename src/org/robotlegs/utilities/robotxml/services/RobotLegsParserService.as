package org.robotlegs.utilities.robotxml.services {		import org.robotlegs.utilities.robotxml.events.RobotLegsParserServiceEvent;		import flash.filesystem.File;	import flash.events.Event;	import org.robotlegs.mvcs.Actor;		public class RobotLegsParserService extends Actor	{				private var workingFiles:Number = 0;				//--------------------------------------------------------------------------		//		//  Initialization		//		//--------------------------------------------------------------------------		/**		 * No comment. 		 * 		 */		public function RobotLegsParserService() 		{			super();		}				//--------------------------------------------------------------------------		//		//  API		//		//--------------------------------------------------------------------------				public function findVariableInjections(fileRef:File):void		{			workingFiles++;			            fileRef.addEventListener(Event.COMPLETE, onComplete, false, 0, true);			fileRef.load();		}				protected function onComplete(e:Event):void		{			var str:String = e.target.data.toString();			// so i've now got the contents as a string.			// Now for my uber regex skills!			// ahahhahahahaah			// ...			var names:Array = new Array();												var pattern:RegExp = /\s*\[inject\]\s*public\s*var\s*([A-Za-z0-9_\-]*)\s*:\s*[A-Za-z][A-Za-z0-9]*/gmi;			var result:Array = pattern.exec(str);			while (result != null) 			{ 				names.push(result[1]);				result = pattern.exec(str); 			} 			if(names.length)			{				//trace("injection points in file " + e.target.name + ": " + names);			}								result = null;						// FQDN						pattern = /\s*package\s*([a-zA-Z0-9.]*)/gim;			result = pattern.exec(str);			if(result != null && names.length > 0)			{				var fqdn:String = result[1] + "::" + e.target.name.slice(0, (e.target.name.lastIndexOf(File.separator)-2));				//trace("FQDN: " + fqdn);				dispatch(new RobotLegsParserServiceEvent(RobotLegsParserServiceEvent.NEW_INJECTION, fqdn, names));					}						workingFiles--;			if(workingFiles == 0)			{				// dispatch some kind of "done" message				// so a write command can be executed				// creating the XML file.				dispatch(new RobotLegsParserServiceEvent(RobotLegsParserServiceEvent.DONE));			}		}			}}