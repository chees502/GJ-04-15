using UnityEngine;
using System.Collections;

public class playerController : MonoBehaviour {
	public bool p1=true;
	public playerController buddy;
	ActorController actor;
	float maxBuddyDistance=25;
	void Awake(){
		if(_Root.playerLogic.player1==null){
			_Root.playerLogic.player1=this;
		}else if(_Root.playerLogic.player2==null){
			_Root.playerLogic.player2=this;
			p1=false;
		}else{
			Debug.LogError("2 Players already registerd");
			Destroy(gameObject);
		}
		actor = gameObject.AddComponent<ActorController>();
		actor.friction=10;
		actor.runSpeed=2;
	}
	void Start(){
		if(p1){
			buddy=_Root.playerLogic.player2;
		}else{
			buddy=_Root.playerLogic.player1;
		}
	}
	void Update(){
		if(p1){
			if(Input.GetKey("a")){
				actor.Move (-1);
			}
			if(Input.GetKey("d")){
				actor.Move (1);
			}
			if(Input.GetKeyDown("space")){
				actor.Jump(10);
			}
		}else{
			if(Input.GetKey("left")){
				actor.Move (-1);
			}
			if(Input.GetKey("right")){
				actor.Move (1);
			}
			if(Input.GetKey("down")){
				Jump (-1);
			}
			if(Input.GetKey("up")){
				Jump (1);
			}

		}
		Tether();
	}
	void Jump(float dir){
		//velocity.y+=dir*runSpeed;
	}
	public Vector3 GetMidPoint(){
		return(transform.position+buddy.transform.position)*0.5f;
	}
	void Tether(){
		float distance= Vector3.Distance(transform.position,buddy.transform.position);
		Vector3 midPoint=GetMidPoint();
		if(distance>maxBuddyDistance){
			Vector3 direction = buddy.transform.position-transform.position;
			direction.Normalize();
			buddy.transform.position=midPoint+direction*maxBuddyDistance*0.5f;
			transform.position=midPoint+direction*maxBuddyDistance*-0.5f;

		}
	}
}
