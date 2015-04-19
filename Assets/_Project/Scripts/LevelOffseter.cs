using UnityEngine;
using System.Collections;

public class LevelOffseter : MonoBehaviour {
	void Update () {
		Vector3 position = transform.position;
		position.x-=_Root.Apendix.levelScrollSpeed*Time.deltaTime;
		if(position.x<0){
			position.x=1;
			//snap
		}
		transform.position=position;
	}
}
