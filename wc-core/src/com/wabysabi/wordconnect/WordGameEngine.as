package com.wabysabi.wordconnect
{
	import com.wabysabi.wordconnect.graph.WordGraph;
	import com.wabysabi.wordconnect.model.Game;
	import com.wabysabi.wordconnect.model.Round;
	import com.wabysabi.wordconnect.model.WordSlot;

	public class WordGameEngine
	{
		
		public function WordGameEngine( wordGraph:WordGraph )
		{
			_wordGraph = wordGraph;
		}
		
		private var _currentGame:Game;
		private var _wordGraph:Object;

		public function get wordGraph():Object
		{
			return _wordGraph;
		}

		public function set wordGraph(value:Object):void
		{
			_wordGraph = value;
		}


		public function get currentGame():Game
		{
			return _currentGame;
		}

		
		public function startNewGame():void
		{
			_currentGame = new Game();
		}
		
		public function createAndAddRound( difficulty:int ):Round
		{
			var round:Round = new Round( new Vector.<WordSlot>() );
			currentGame.rounds.push( round );
			return round;
		}
	}
}