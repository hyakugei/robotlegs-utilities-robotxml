﻿package com.josyule.utilities.robotxml.events {		import flash.events.Event;		public class LocationEvent extends Event {				public static const NEW_FOLDER:String = "new_folder";		public static const NEW_FILE:String = "new_file";						public function LocationEvent(name:String) {			super(name);		} 					}}