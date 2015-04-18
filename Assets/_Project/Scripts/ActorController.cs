﻿using UnityEngine;
using System.Collections;

public class ActorController : MonoBehaviour {
	Vector2 velocity;
	public float friction=1;
	public float runSpeed=1;
	public bool isGrounded=false;
	void Update () {
		velocity.y+=_Root.Apendix.actorGravity*Time.deltaTime;
		Vector3 groundPlane=new Vector3(0,-0.502f,0);
		RaycastHit2D hit=Physics2D.Raycast(
			transform.position+groundPlane,
			-Vector2.up,
			velocity.y*Time.deltaTime);
		if(hit.collider!=null&&hit.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			Debug.Log(gameObject.name+" Hit "+hit.collider.gameObject.name);
			transform.position=new Vector3(hit.point.x-groundPlane.x,hit.point.y-groundPlane.y,0);
			velocity.y=0;
			isGrounded=true;
			//Debug.Log (hit.point);
		}
		Debug.DrawRay(transform.position+groundPlane,velocity*Time.deltaTime);
		Phys();
	}
	public void Move(float dir){
		velocity.x+=dir*runSpeed;
	}
	public void Jump(float strength){
		if(isGrounded){
			isGrounded=false;
			Debug.Log ("Jumped for "+strength);
			velocity.y=strength;
		}
	}
	public void Jump(){
		Jump(10);
	}
	void Phys(){
		Vector3 newPos = transform.position;
		newPos.x+=velocity.x*Time.deltaTime;
		newPos.y+=velocity.y*Time.deltaTime;
		transform.position=newPos;
		velocity.x-=velocity.x*Time.deltaTime*friction;
	}

}
