package com.wabysabi.wordconnect.graph
{

	import com.wabysabi.wordconnect.graph.WordNode;
	
	import flash.utils.Dictionary;

	public class WordGraph
	{
		private var nodeDict : Dictionary = new Dictionary(false);
		
		public function WordGraph()
		{
		}
		
		
		public function getAllWordNodes():Vector.<WordNode>
		{
			var nodeList : Vector.<WordNode> = new Vector.<WordNode>();
			for each ( var node:WordNode in nodeDict )
			{
				nodeList.push( node );
			}
			return nodeList;
		}
		
		public function addAssociation( cueWord:String, targetWord:String ):void
		{
			// TODO Auto Generated method stub
			var cueNode:WordNode, targetNode:WordNode;
			
			cueNode = nodeDict[cueWord] ||= new WordNode( cueWord );
			targetNode = nodeDict[targetNode] ||= new WordNode( targetWord );
			//trace("addAssociation: ", cueNode, targetNode);
		}
	}
}