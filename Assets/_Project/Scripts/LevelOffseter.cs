using UnityEngine;
using System.Collections;

public class LevelOffseter : MonoBehaviour {
	void Update () {
		Vector3 position = transform.position;
		position.x-=_Root.Apendix.levelScrollSpeed*Time.deltaTime;
		if(position.x<0){
			Transform[] children = ReleaseChildren();
			position.x=1;
			transform.position=position;
			CaptureChildren(children);
		}else{
			transform.position=position;
		}
	}
	void Start(){
		for(int x = 0;x<20;x++){
			GameObject newGO=Instantiate(Resources.Load("Tile14"))as GameObject;
			newGO.transform.position=new Vector3(x-10,-5,0);
			newGO.transform.parent=transform;
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
