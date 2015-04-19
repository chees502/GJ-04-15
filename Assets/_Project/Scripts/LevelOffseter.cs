using UnityEngine;
using System.Collections;

public class LevelOffseter : MonoBehaviour {
	void FixedUpdate () {/*
		Vector3 position = transform.position;
		position.x-=_Root.Apendix.levelScrollSpeed*Time.deltaTime;
		if(position.x<0){
			Transform[] children = ReleaseChildren();
			position.x=1;
			transform.position=position;
			CaptureChildren(children);
		}else{
			transform.position=position;
		}*/
	}
	void Start(){
		for(int x = 0;x<0;x++){
			GameObject parent=new GameObject();
			GameObject newGO = Instantiate(Resources.Load ("TileG14"))as GameObject;
			newGO.transform.parent=parent.transform;
			//MeshRender mesh = newGO.AddComponent<MeshRenderer>();
			//mesh.
			parent.transform.position=new Vector3(x-10,-4,0);
			parent.transform.parent=transform;
			BoxCollider2D box = parent.AddComponent<BoxCollider2D>();
			parent.AddComponent<TileLogic>();
			box.offset=new Vector2(0,-0);
			box.size=new Vector2(1,0.55f);
		}
	}
	Transform[] ReleaseChildren(){
		Transform[] oldChildren=new Transform[transform.childCount];
		int i = 0;
		foreach(Transform child in transform){
			oldChildren[i]=child;
			child.transform.parent=transform.parent;
			i++;
		}
		return oldChildren;
	}
	void CaptureChildren(Transform[] oldChidren){
		foreach(Transform child in oldChidren){
			child.transform.parent=transform;
		}
	}
}
