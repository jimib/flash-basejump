package controllers
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import models.BaseModel;
	
	import views.BaseView;
	
	public class BaseController extends EventDispatcher
	{
		public function BaseController(model:BaseModel = null)
		{
			super();
			
			init();
			this.model = model;
			
			if(!__initialised){
				throw new Error("Extending BaseController requires that super.init is called");
			}
		}
		
		//PUBLIC METHODS
		public function destroy():void{
			
		}
		
		public function get model():BaseModel{
			return _model;
		}
		
		public function set model(value:BaseModel):void{
			_model = value;
		}
		
		public function get view():BaseView{
			if(_view == null){
				_view = new BaseView();
			}
			
			return _view;
		}
		
		//PROTECTED METHODS 
		protected function init():void{
			__initialised = true;
		}
		
		protected var _view:BaseView;
		protected var _model:BaseModel;
		private var __initialised:Boolean = false;
	}
}