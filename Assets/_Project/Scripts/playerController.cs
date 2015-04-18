using UnityEngine;
using System.Collections;

public class playerController : MonoBehaviour {
	Vector2 velocity;
	public float friction=1;
	public float runSpeed=1;
	public bool p1=true;
	public playerController buddy;
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
				Move (-1);
			}
			if(Input.GetKey("d")){
				Move (1);
			}
			if(Input.GetKey("s")){
				Jump (-1);
			}
			if(Input.GetKey("w")){
				Jump (1);
			}
		}else{
			if(Input.GetKey("left")){
				Move (-1);
			}
			if(Input.GetKey("right")){
				Move (1);
			}
			if(Input.GetKey("down")){
				Jump (-1);
			}
			if(Input.GetKey("up")){
				Jump (1);
			}

		}
		Phys();
		if(p1){
			Tether();
		}
	}
	void Move(float dir){
		velocity.x+=dir*runSpeed;
	}
	void Jump(float dir){
		velocity.y+=dir*runSpeed;
	}
	void Phys(){
		Vector3 newPos = transform.position;
		newPos.x+=velocity.x*Time.deltaTime;
		newPos.y+=velocity.y*Time.deltaTime;
		transform.position=newPos;
		velocity-=velocity*Time.deltaTime*friction;
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
