using UnityEngine;
using System.Collections;

public class TileLogic : MonoBehaviour {
	public bool canSpawn=false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 position = transform.position;
		position.x-=_Root.Apendix.levelScrollSpeed*Time.deltaTime;
		if(position.x<_Root.Apendix.tileDespawnRange){
			Destroy(gameObject);
		}
		transform.position=position;
		if(canSpawn&&transform.position.x<_Root.Apendix.tileSpawnRange){
			canSpawn=false;
			GameObject parent=new GameObject();
			GameObject newGO = Instantiate(Resources.Load ("TileG14"))as GameObject;
			newGO.transform.parent=parent.transform;
			parent.transform.position=transform.position+Vector3.right;
			parent.transform.parent=transform.parent;
			BoxCollider2D box = parent.AddComponent<BoxCollider2D>();
			parent.AddComponent<TileLogic>();
			box.offset=new Vector2(0,-0);
			box.size=new Vector2(1,0.55f);
		}
	}
	void BuildPlatform(){
		canSpawn=false;
		int length = Mathf.FloorToInt(Random.Range(2,6));
		for(int x = 0;x<length;x++){
			string path = "Tile";
			if(x==length-1){
				path+="G8";
			}else{
				path+="G10";
			}
			GameObject parent=new GameObject();
			GameObject newGO = Instantiate(Resources.Load (path))as GameObject;
			newGO.transform.parent=parent.transform;
			parent.transform.position=transform.position+Vector3.right*(x+1);
			parent.transform.parent=transform.parent;
			BoxCollider2D box = parent.AddComponent<BoxCollider2D>();
			parent.AddComponent<TileLogic>().canSpawn=false;
			box.offset=new Vector2(0,-0);
			box.size=new Vector2(1,0.55f);
		}
	}
}
