package models
{
	import events.GameModelEvent;
	
	public class GameModel extends BaseModel
	{
		public function GameModel(data:* = null)
		{
			super();
			this.data = data;
		}
		
		override public function set data(value:*):void{
			//clear everything out - rebuild it
			_grids.forEach(function(grid:GameGridModel, index:uint, arr:Vector.<GameGridModel>):void{
				grid.destroy();
			});
			//rebuild everything
			_numColumns = isNaN(value.numColumns) ? value.numColumns : 10;
			_numRows = isNaN(value.numRows) ? value.numRows : 10;
			
			var grids:Array = (value.grids is Array) ? value.grids as Array : [];
			
			grids.forEach(function(grid:Object, index:uint, arr:Array):void{
				_grids.push(new GameGridModel(grid));
			});
			
			//dispatch an event to indicate everything is updated
			dispatchEvent(new GameModelEvent(GameModelEvent.CHANGE));
		}
		
		public function getGridAt(x:uint, y:uint):GameGridModel{
			var grid:GameGridModel = null;
			
			var i:uint = x + y * _numColumns;
			grid = i < _grids.length ? _grids[i] : null;
			
			return grid;
		}
		
		public function get numColumns():uint{return _numColumns;}
		
		public function get numRows():uint{return _numRows;}
		
		//VARIABLES
		private var _numColumns:uint;
		private var _numRows:uint;
		private var _grids:Vector.<GameGridModel>;
	}
}