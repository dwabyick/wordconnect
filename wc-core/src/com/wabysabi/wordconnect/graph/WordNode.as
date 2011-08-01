package com.wabysabi.wordconnect.graph
{
	/**
	 * A Graph node with sequences of Queues/Responses.
	 * 
	 * Thanks to implementation by Tim Kukulski.
	 */ 
	public class WordNode
	{
		public function WordNode( word:String )
		{
			_word = word;
		}
		
		private var _word:String;
		public function get word():String
		{
			return _word;
		}

		public function set word(value:String):void
		{
			_word = value;
		}

		private const _cues : Vector.<WordNode> = new Vector.<WordNode>(); 
		public function get cues():Vector.<WordNode>
		{
			return _cues;
		}

		private const _responses : Vector.<WordNode> = new Vector.<WordNode>(); 
		public function get responses():Vector.<WordNode>
		{
			return _responses;
		}
		
		public function addCue( cue:WordNode ) : void
		{
			if ( cues.indexOf( cue ) < 0 )
				cues.push( cue );
		}
		
		public function addResponse( response:WordNode ) : void
		{
			if ( responses.indexOf( response ) < 0 )
				responses.push( response );
		}

	
		public function toString():String
		{
			return "[WordNode word: " + word + "]";
		}

	}
}