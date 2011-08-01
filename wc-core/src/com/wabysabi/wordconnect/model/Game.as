package com.wabysabi.wordconnect.model
{
	public class Game
	{
		
		public function Game()
		{
			_rounds = new Vector.<Round>();
		}
		
		public function get score():int
		{
			// TODO Auto Generated method stub
			return _score;
		}
		
		public function set score( value:int ):void
		{
			_score = value;
		}
		private var _score:int;
		private var _rounds:Vector.<Round>;
		
		public function get rounds():Vector.<Round>
		{
			return _rounds;
		}
		
		public function set rounds(value:Vector.<Round>):void
		{
			_rounds = value;
		}
		
		public function get numRounds():int
		{
			return _rounds.length;
		}
	}
}