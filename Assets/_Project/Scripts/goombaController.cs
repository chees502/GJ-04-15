using UnityEngine;
using System.Collections;

public class goombaController : MonoBehaviour {
	public bool isReckless 	= false;
	public bool isLeftbound	= true;
	ActorController actor;

	void Awake(){
		actor = gameObject.AddComponent<ActorController>();
		if(Random.value>0.5f){
			isReckless = true;
		}
	}

	void FixedUpdate () {
		SwitchDirectionCheck();
		Move();
	}

	void SwitchDirectionCheck(){
		// Left Top
		Raycast(
			"left",
			transform.position + new Vector3(-actor.size.x*0.501f,actor.size.y*0.4f,0),
			-Vector2.right,
			-1,
			false);
		// Left Mid
		Raycast(
			"left",
			transform.position + new Vector3(-actor.size.x*0.501f,0,0),
			-Vector2.right,
			-1,
			false);
		// Left Bot
		Raycast(
			"left",
			transform.position + new Vector3(-actor.size.x*0.501f,-actor.size.y*0.4f,0),
			-Vector2.right,
			-1,
			false);
		// Right Top
		Raycast(
			"right",
			transform.position + new Vector3(actor.size.x*0.501f,actor.size.y*0.4f,0),
			Vector2.right,
			1,
			false);
		// Right Mid
		Raycast(
			"right",
			transform.position + new Vector3(actor.size.x*0.501f,0,0),
			Vector2.right,
			1,
			false);
		// Right Bot
		Raycast(
			"right",
			transform.position + new Vector3(actor.size.x*0.501f,-actor.size.y*0.4f,0),
			Vector2.right,
			1,
			false);
		// Bottom Left
		Raycast(
			"left",
			transform.position + new Vector3(-actor.size.x*0.4f,-actor.size.y*0.501f,0),
			-Vector2.up,
			-1,
			true);
		// Bottom Right
		Raycast(
			"right",
			transform.position + new Vector3(actor.size.x*0.4f,-actor.size.y*0.501f,0),
			-Vector2.up,
			-1,
			true);
	}

	void Raycast(string face, Vector2 origin, Vector2 direction, float distance, bool isDownwardCheck){
		if(!isDownwardCheck || (isDownwardCheck&&!isReckless)){
			RaycastHit2D hit = Physics2D.Raycast(
				origin,
				direction,
				distance
			);
			if(hit.collider!=null){
				//Debug.Log(gameObject.name+" hit "+hit.collider.gameObject.name);
				if(face=="left") SetIsLeftbound(false);
				if(face=="right") SetIsLeftbound(true);
			}
		}
	}

	public void SetIsLeftbound(bool setValue){
		isLeftbound = setValue;
	}

	public void SwitchDirection(){
		if(isLeftbound){
			isLeftbound = false;
			Debug.Log(gameObject.name+" is now heading right");
		} else {
			isLeftbound = true;
			Debug.Log(gameObject.name+" is now heading left");
		}
	}

	public void Move(){
		if(isLeftbound){
			actor.Move (-1);
		} else {
			actor.Move(1);
		}
	}
}
