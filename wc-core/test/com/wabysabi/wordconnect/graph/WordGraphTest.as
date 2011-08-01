package com.wabysabi.wordconnect.graph
{
	import org.flexunit.assertThat;
	import org.flexunit.asserts.assertNotNull;

	public class WordGraphTest
	{		
		
		private var wordGraph:WordGraph;
		
		[Before]
		public function setUp():void
		{
			wordGraph = new WordGraph();
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function canAddAssociation():void
		{
			var cueWord:String = "cueWord", targetWord:String = "targetWord";
			wordGraph.addAssociation( cueWord, targetWord );
			
		}
		
		[Test]
		public function canGetAllWords():void
		{
			var wordNodes:Vector.<WordNode> = wordGraph.getAllWordNodes();
			assertNotNull( wordNodes );
		}
		
		
	}
}