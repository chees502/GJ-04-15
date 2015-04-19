using UnityEngine;
using System.Collections;

public class LevelController : MonoBehaviour {
	
	public enum _TempTile{Void,Solid,Platform,Error};
	const int RED = 1;
	const int GREEN = 2;
	const int BLUE = 4;
	const int WHITE = 7;
	// Use this for initialization
	void Start () {
		Board testBoard = new Board();
		testBoard.tiles=new char[12][];
		testBoard.tiles[00]=new char[]{'0','0','0','0','2','2','2','2','2','0',};
		testBoard.tiles[01]=new char[]{'1','0','0','0','0','0','0','0','0','0',};
		testBoard.tiles[02]=new char[]{'0','1','0','0','0','0','0','0','0','0',};
		testBoard.tiles[03]=new char[]{'0','0','1','0','0','0','0','0','0','0',};
		testBoard.tiles[04]=new char[]{'0','0','0','0','0','0','0','0','0','0',};
		testBoard.tiles[05]=new char[]{'0','0','1','0','0','0','0','0','0','0',};
		testBoard.tiles[06]=new char[]{'0','0','0','1','0','0','0','0','0','0',};
		testBoard.tiles[07]=new char[]{'0','0','0','0','0','0','0','0','0','0',};
		testBoard.tiles[08]=new char[]{'0','0','0','0','0','0','0','0','0','0',};
		testBoard.tiles[09]=new char[]{'0','0','0','0','0','0','0','0','0','0',};
		testBoard.tiles[10]=new char[]{'0','0','0','0','0','0','0','0','0','8',};
		testBoard.tiles[11]=new char[]{'0','0','0','0','0','0','0','0','8','8',};
		LoadBoard(testBoard);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void LoadBoard(Board board){
		_TempTile[][] tempTiles= new _TempTile[board.tiles.Length][];
		for(int y = 0;y<board.tiles.Length;y++){
			tempTiles[y]=new _TempTile[board.tiles[y].Length];
			for(int x = 0;x<board.tiles[y].Length;x++){
				char tile=board.tiles[y][x];
				if(tile=='0'){
					tempTiles[y][x]=_TempTile.Void;
				}else if(tile == '1'){
					tempTiles[y][x]=_TempTile.Solid;
				}else if(tile=='2'){
					tempTiles[y][x]=_TempTile.Platform;
				}else{
					tempTiles[y][x]=_TempTile.Error;
					Debug.LogError("Invalid char at "+x+", "+y+": "+tile);
				}
			}
		}
		for(int y = 0;y<board.tiles.Length;y++){
			for(int x = 0;x<board.tiles[y].Length;x++){
				string tileName="Tile";
				if(tempTiles[y][x]==_TempTile.Void){
					tileName+=15;
				}else if(tempTiles[y][x]==_TempTile.Platform){
					tileName+=6;
				}else if(tempTiles[y][x]==_TempTile.Solid){
					tileName+=13;
				}else{

				}
				GameObject newGO = Instantiate(Resources.Load(tileName))as GameObject;
				Vector3 newPos=new Vector3(x,-y,0);
				newGO.transform.position=newPos;
			}
		}
	}
	public class Board{
		public char[][] tiles;
	}
}
