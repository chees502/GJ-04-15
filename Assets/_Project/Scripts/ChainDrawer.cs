using UnityEngine;
using System.Collections;

public class ChainDrawer : MonoBehaviour {
	LineRenderer line;
	int segmentCount;
	// Use this for initialization
	void Start () {/*
		line=gameObject.AddComponent<LineRenderer>();
		segmentCount=_Root.linkLogic.links.Count;
		line.SetVertexCount(segmentCount);*/
	}
	
	// Update is called once per frame
	void Update () {
		if(line==null){
			line=gameObject.AddComponent<LineRenderer>();
			segmentCount=_Root.linkLogic.links.Count;
			line.SetVertexCount(segmentCount);
			line.SetWidth(0.1f,0.1f);
		}
		if(_Root.playerLogic.tether){
			line.enabled=true;
			for(int x = 0;x<segmentCount;x++){
				line.SetPosition(x,_Root.linkLogic.links[x].transform.position);
			}
		}else{
			line.enabled=false;
		}
	}
}
