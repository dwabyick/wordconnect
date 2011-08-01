package com.wabysabi.wordconnect.model
{
	public class Round
	{
		
		public function Round( wordSlots:Vector.<WordSlot> )
		{
			_wordSlots = wordSlots;
		}
		
		
		private var _difficulty:int;
		private var _wordSlots:Vector.<WordSlot>;

		public function get difficulty():int
		{
			return _difficulty;
		}
		
		

		public function get wordSlots():Vector.<WordSlot>
		{
			return _wordSlots;
		}
	}
}