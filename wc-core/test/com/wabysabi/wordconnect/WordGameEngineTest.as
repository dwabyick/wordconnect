package com.wabysabi.wordconnect
{
	import com.wabysabi.wordconnect.graph.WordGraph;
	import com.wabysabi.wordconnect.model.Difficulty;
	import com.wabysabi.wordconnect.model.Game;
	import com.wabysabi.wordconnect.model.Round;
	
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertNotNull;
	import com.wabysabi.wordconnect.parser.WordGraphCSVParser;

	public class WordGameEngineTest
	{		

		private var engine:WordGameEngine;
		private var game:Game;
		[Before]
		public function setUp():void
		{
			var wordGraph : WordGraph = new WordGraph();
			var serializer : WordGraphCSVParser = new  WordGraphCSVParser();
			
			
			
			engine = new WordGameEngine( wordGraph );
			engine.startNewGame();
			game = engine.currentGame;
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[Test]
		public function canCreateWordGame():void
		{	
			assertNotNull( engine.currentGame );
		}
		
		[Test]
		public function canKeepGameScore():void
		{
			var game:Game = engine.currentGame;
			assertEquals(game.score, 0);
			
			game.score += 10;
			assertEquals(game.score,10);
		}
		
		[Test]
		public function canCreateAddAddNewRounds():void
		{
			var round:Round = engine.createAndAddRound( Difficulty.EASY );
			assertNotNull( round );
			assertEquals( game.numRounds, 1 );
			
			engine.createAndAddRound( Difficulty.EASY );
			engine.createAndAddRound( Difficulty.EASY );
			assertEquals( game.numRounds, 3 );
		}
		
		
		
		/* big test - means the graph engine is working
		[Test]
		public function canCreateEasyRoundWithWords():void
		{
			var round:Round = engine.createAndAddRound( Difficulty.EASY );
			assertEquals( round.wordSlots.length, 3 );
		}*/
		
		[Test]
		public function hasWordGraph():void
		{
			assertNotNull( engine.wordGraph );
		}
		
				
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		
	}
}