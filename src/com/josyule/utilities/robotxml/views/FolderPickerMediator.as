package com.josyule.utilities.robotxml.views 
{
	
	import com.josyule.utilities.robotxml.views.FolderPicker;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FolderPickerMediator extends Mediator 
	{
		
		// declare the view to be injected
		[Inject]
		public var view:FolderPicker;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * Avoid doing work in the constructor!
		 * onRegister() is the place to do things. 
		 * 
		 */
		
		public function FolderPickerMediator() 
		{			
			// Try not to put stuff in the constructor of the mediator
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden API
		//
		//--------------------------------------------------------------------------
		/**
		 * Initialize the view and register for events. 
		 * 
		 */
		override public function onRegister():void
		{			
			//eventMap.mapListener(eventDispatcher, EventType.EVENT_NAME, eventHandlerFunction, eventClass);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event Handlers
		//
		//--------------------------------------------------------------------------
		
	}
}
