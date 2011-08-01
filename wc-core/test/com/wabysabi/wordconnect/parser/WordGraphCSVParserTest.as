package com.wabysabi.wordconnect.parser
{
	import com.wabysabi.wordconnect.graph.WordGraph;
	
	import flash.utils.ByteArray;
	
	import org.flexunit.asserts.assertNotNull;
	import org.flexunit.asserts.assertTrue;

	public class WordGraphCSVParserTest
	{	
		private var parser : WordGraphCSVParser;
		
		[Before]
		public function setUp():void
		{
			parser = new WordGraphCSVParser();
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
		public function canParseCorrectCSV():void
		{
			var csvStringData:String = String( new csvData() as ByteArray );
			assertNotNull( csvStringData );
			
			var wordGraph : WordGraph = parser.parse( csvStringData );
		}
		
		
		[Embed(source="/assets/associations.csv",mimeType="application/octet-stream")]
		private static var csvData : Class;
		
		
	}
}