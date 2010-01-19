﻿package org.robotlegs.utilities.robotxml.views {	import flash.events.Event;		import org.robotlegs.utilities.robotxml.views.UpdateButton;	import org.robotlegs.utilities.robotxml.models.Location;	import org.robotlegs.utilities.robotxml.events.*;		import org.robotlegs.mvcs.Mediator;		public class UpdateButtonMediator extends Mediator 	{				// declare the view to be injected		[Inject]		public var view:UpdateButton;		[Inject] public var model:Location;				//--------------------------------------------------------------------------		//		//  Initialization		//		//--------------------------------------------------------------------------		/**		 * Avoid doing work in the constructor!		 * onRegister() is the place to do things. 		 * 		 */				public function UpdateButtonMediator() 		{						// Try not to put stuff in the constructor of the mediator		}				//--------------------------------------------------------------------------		//		//  Overridden API		//		//--------------------------------------------------------------------------		/**		 * Initialize the view and register for events. 		 * 		 */		override public function onRegister():void		{						trace("UpdateButtonMediator.onRegister()");			//eventMap.mapListener(eventDispatcher, EventType.EVENT_NAME, eventHandlerFunction, eventClass);			eventMap.mapListener(eventDispatcher, LocationEvent.NEW_FOLDER, onLocationEvent, LocationEvent);			eventMap.mapListener(eventDispatcher, LocationEvent.NEW_FILE, onLocationEvent, LocationEvent);			eventMap.mapListener(view, UpdateButton.UPDATE_CLICK, onUpdateClickEvent);		}				//--------------------------------------------------------------------------		//		//  Event Handlers		//		//--------------------------------------------------------------------------				protected function onLocationEvent(e:LocationEvent):void		{			//ensure that both filepath & folderpath have a value before enabling this button.			if(model.folderPath != null && model.filePath != null)			{				view.enabled = true;			}			else			{				view.enabled = false;			}		}				protected function onUpdateClickEvent(e:Event):void		{			// ok, now do it!			// probably should call a command, which will talk to a service to do the actual 			// "work".			trace("UpdateButtonMediator.onupdateClickEvent()");			dispatch(new SystemEvent(SystemEvent.START_UPDATE));					}	}}