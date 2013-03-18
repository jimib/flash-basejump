package models
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class BaseModel extends EventDispatcher
	{
		public function BaseModel(data:* = null)
		{
			super();
			
			init();
			this.data = data;

			if(!__initialised){
				throw new Error("Extending BaseModel requires that super.init is called");
			}
		}
		
		//PUBLIC METHODS
		public function set data(value:*):void{
			
		}
		
		public function destroy():void{
		
		}
		
		//PROTECTED METHODS
		protected function init():void{
			__initialised = true;
		}
		
		private var __initialised:Boolean = false;
	}
}