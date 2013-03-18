package events
{
	import flash.events.Event;
	
	public class ModelEvent extends Event
	{
		public static const CHANGE:String = Event.CHANGE;
		
		public function ModelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}