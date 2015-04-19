using UnityEngine;
using System.Collections;

public class TileLogic : MonoBehaviour {
	bool canSpawn=true;
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
			//MeshRender mesh = newGO.AddComponent<MeshRenderer>();
			//mesh.
			parent.transform.position=transform.position+Vector3.right;
			parent.transform.parent=transform.parent;
			BoxCollider2D box = parent.AddComponent<BoxCollider2D>();
			parent.AddComponent<TileLogic>();
			box.offset=new Vector2(0,-0);
			box.size=new Vector2(1,0.55f);
		}
	}
}
