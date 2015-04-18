using UnityEngine;
using System.Collections;

public class ChainDrawer : MonoBehaviour {
	LineRenderer line;
	int segmentCount;
	// Use this for initialization
	void Start () {
		line=gameObject.AddComponent<LineRenderer>();
		segmentCount=_Root.linkLogic.links.Count;
		line.SetVertexCount(segmentCount);
	}
	
	// Update is called once per frame
	void Update () {
		for(int x = 0;x<segmentCount;x++){
			line.SetPosition(x,_Root.linkLogic.links[x].transform.position);
		}
	}
}
