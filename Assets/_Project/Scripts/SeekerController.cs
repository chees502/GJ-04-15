using UnityEngine;
using System.Collections;

public class SeekerController : MonoBehaviour {

	// Use this for initialization
	Transform targetPlayer;
	void Start () {
		targetPlayer=_Root.playerLogic.GetRandomPlayer().transform;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 dir = targetPlayer.position-transform.position;
		dir.Normalize();
		float turnAmount=Vector3.Dot(transform.right,dir);
		transform.Rotate(0,0,turnAmount*Time.deltaTime);
		transform.position+=transform.up*Time.deltaTime;
	}
}
