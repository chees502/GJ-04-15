using UnityEngine;
using System.Collections;

public class playerController : MonoBehaviour {
	public bool p1=true;
	public playerController buddy;
	ActorController actor;
	float maxBuddyDistance=5;
	public enum _State{Alive,Alone,Dead};
	public _State state=_State.Alive;
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
//		actor.friction=10;
//		actor.runSpeed=2;
	}
	void Start(){
		if(p1){
			buddy=_Root.playerLogic.player2;
		}else{
			buddy=_Root.playerLogic.player1;
		}
	}
	void Update(){
		if(state==_State.Dead){
			if(Vector3.Distance(transform.position,buddy.transform.position)<_Root.Apendix.broReviveDistance){
				state=_State.Alive;
				actor.dead=false;
				buddy.state=_State.Alive;
				_Root.playerLogic.tether=true;
			}
			return;
		}
		if(p1){
			if(Input.GetKey("a")){
				actor.Move (-1);
			}
			if(Input.GetKey("d")){
				actor.Move (1);
			}
			if(Input.GetKeyDown("space")){
				actor.Jump();
			}
		}else{
			if(Input.GetKey("left")){
				actor.Move (-1);
			}
			if(Input.GetKey("right")){
				actor.Move (1);
			}
			if(Input.GetKeyDown("[0]")){
				actor.Jump ();
			}
			if(Input.GetKeyDown("right ctrl")){
				actor.Jump ();
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
		if(_Root.playerLogic.tether==false){
			return;
		}
		float distance= Vector3.Distance(transform.position,buddy.transform.position);
		Vector3 midPoint=GetMidPoint();
		if(distance>maxBuddyDistance){
			Vector3 direction = buddy.transform.position-transform.position;
			direction.Normalize();
			buddy.transform.position=midPoint+direction*maxBuddyDistance*0.5f;
			transform.position=midPoint+direction*maxBuddyDistance*-0.5f;

		}
	}
	public void Respawn(){
		transform.position=Vector3.zero;
		state=_State.Dead;
		actor.dead=true;
		if(buddy.state!=_State.Dead){
			buddy.state=_State.Alone;
		}else{
			Application.LoadLevel(0);
		}
		_Root.playerLogic.tether=false;
	}
}
