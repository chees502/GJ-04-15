using UnityEngine;
using System.Collections;

public class BoardTiming : MonoBehaviour {
	LevelController.Board currentBoard;
	int width;
	int height;
			// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 position = transform.position;
		position.x-=_Root.Apendix.levelScrollSpeed*Time.deltaTime;
		transform.position=position;
		if(position.x<_Root.Apendix.tileSpawnRange){
			int index = Random.Range (0,LevelController.boards.Count);
			Debug.Log (index);
			PlaceBoard(index);
			GameObject newTiming = new GameObject();
			newTiming.transform.position=transform.position+new Vector3(width,0,0);
			newTiming.AddComponent<BoardTiming>();
			Destroy(gameObject);
		}
	}
	void PlaceBoard(int index){
		currentBoard= LevelController.boards[index];
		width = currentBoard.tiles[0].Length;
		height = currentBoard.tiles.Length;
		for(int y = 0;y<height;y++){
			for(int x=0;x<width;x++){
				if(GetTile(x,y)=='1'){
					string suffix=GetSuffix(x,y);
					SpawnTile("Tile"+suffix,x,y);
				}
			}
		}

	}
	string GetSuffix(int x,int y){
		int Value=0;
		bool Grass=false;
		if(y>0&&GetTile(x+0,y-1)=='1'){
			Value+=1;
		}else{
			Grass=true;
		}
		if(x<width-1&&GetTile(x+1,y+0)=='1'){
			Value+=2;
		}
		if(y<height-1&&GetTile(x+0,y+1)=='1'){
			Value+=4;
		}
		if(x>0&&GetTile(x-1,y+0)=='1'){
			Value+=8;
		}
		string final ="";
		if(Grass){
			final+="G";
		}
		final+=Value;
		return final;
	}
	char GetTile(int x,int y){
		return currentBoard.tiles[y][x];
	}
	void SpawnTile(string Path,int x,int y){
		Debug.Log ("Spawning tile "+Path);
		GameObject parent=new GameObject();
		GameObject newGO = Instantiate(Resources.Load (Path))as GameObject;
		newGO.transform.parent=parent.transform;
		parent.transform.position=transform.position+new Vector3(x,-y,0);
		parent.transform.parent=transform.parent;
		BoxCollider2D box = parent.AddComponent<BoxCollider2D>();
		parent.AddComponent<TileLogic>();
		box.offset=new Vector2(0,-0);
		box.size=new Vector2(1,0.55f);
	}
}
