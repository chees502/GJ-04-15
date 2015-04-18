using UnityEngine;
using System.Collections;
public class LinkController : MonoBehaviour {

	void Awake(){
		_Root.linkLogic.links.Add(this);
	}
}
