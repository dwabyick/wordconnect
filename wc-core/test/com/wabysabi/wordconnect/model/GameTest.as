package com.wabysabi.wordconnect.model
{
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertNotNull;

	public class GameTest
	{		
		private var game:Game;
		
		[Before]
		public function setUp():void
		{
			game = new Game();
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[Test]
		public function canKeepGameScore():void
		{
			assertEquals(game.score, 0);
			
			game.score += 10;
			assertEquals(game.score,10);
		}
		
		[Test]
		public function canKeepRounds():void
		{
			assertEquals(game.numRounds,0);
			game.rounds.push( new Round( new Vector.<WordSlot> ) );
			assertEquals(game.numRounds,1);
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