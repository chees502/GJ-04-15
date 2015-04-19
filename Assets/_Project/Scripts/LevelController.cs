using UnityEngine;
using System.Collections;

public class LevelController : MonoBehaviour {

	// Use this for initialization
	void Start () {
		for(int x = 0;x<19;x++){
			for(int y = 0;y<12;y++){
				string tileName="Tile";
				if(y==0){
					tileName+=14;
				}else if(x==0){
					tileName+=7;
				}else if(x==11){
					tileName+=13;
				}else{
					tileName+=15;
				}
				GameObject newGO = Instantiate(Resources.Load(tileName))as GameObject;

				Vector3 newPos= new Vector3(x-9.5f,y-6,0);
				newGO.transform.position=newPos;
				newGO.name=x+", "+y+" Tile";
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
