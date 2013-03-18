package views
{
	import flash.display.Sprite;
	
	public class BaseView extends Sprite
	{
		public function BaseView()
		{
			super();
			
			init();
			
			if(!__initialised){
				throw new Error("Extending BaseView requires that super.init is called");
			}
		}
		
		protected function init():void{
			__initialised = true;
		}
		
		private var __initialised:Boolean = false;
	}
}