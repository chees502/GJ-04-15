﻿using UnityEngine;
using System.Collections;

public class BuildChain : MonoBehaviour {
	public int chainLength=10;
	public float chainSpace=1;
	// Use this for initialization
	void Awake () {

		GameObject lastGO=new GameObject();
		for(int x=0;x<chainLength;x++){
			GameObject tempGO=GameObject.CreatePrimitive(PrimitiveType.Cube);
			tempGO.transform.position = new Vector3(0,x*-3,0);
			tempGO.layer=LayerMask.NameToLayer("Chain");
			DestroyImmediate(tempGO.GetComponent<BoxCollider>());
			tempGO.name="Joint "+x;
			tempGO.AddComponent<Rigidbody2D>();
			tempGO.AddComponent<BoxCollider2D>();
			tempGO.AddComponent<LinkController>();
			if(x!=0){
				HingeJoint2D hinge = tempGO.AddComponent<HingeJoint2D>();
				hinge.connectedBody=lastGO.GetComponent<Rigidbody2D>();
				hinge.anchor=new Vector2(0,chainSpace);
				hinge.connectedAnchor=new Vector2(0,-chainSpace);
				if(x==chainLength-1){
					SetToPlayer(tempGO);
				}

			}else{
				SetToPlayer(tempGO);
			}
			lastGO=tempGO;

		}
	}
	void SetToPlayer(GameObject tempGO){
		tempGO.GetComponent<Rigidbody2D>().isKinematic=true;
		tempGO.AddComponent<playerController>();
	}
	// Update is called once per frame
	void Update () {
	
	}
}