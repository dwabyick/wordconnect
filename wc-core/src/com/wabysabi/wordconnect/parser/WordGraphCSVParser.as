package com.wabysabi.wordconnect.parser
{
	import com.wabysabi.wordconnect.graph.WordGraph;
	import com.wabysabi.wordconnect.graph.WordNode;

	public class WordGraphCSVParser
	{
		// This only parses 
		private const csvRegEx : RegExp = /([^,\s]+)/g
		public function WordGraphCSVParser()
		{
		}
		
		public function parse(csvStringData:String):WordGraph
		{
			var graph : WordGraph = new WordGraph();
			
			
			var lines : Array = csvStringData.split("\n");
			var node : WordNode, parts:Array;
			
			for each ( var line:String in lines )
			{
				parts = line.match( csvRegEx );
				graph.addAssociation( parts[0], parts[1] );
			}
			return graph;
		}
	}
}