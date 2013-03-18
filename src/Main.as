package
{
	import controllers.BaseController;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			_controller = new BaseController();
		}
		
		//VARIABLES
		private var _controller:BaseController;
	}
}