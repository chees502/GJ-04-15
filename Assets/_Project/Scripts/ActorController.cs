using UnityEngine;
using System.Collections;

public class ActorController : MonoBehaviour {
	Vector2 velocity;
	public bool isGrounded		=false;
	public float actorWidth 	= 1;
	public float actorHeight 	= 1;
	public int lockoutTimer 	= 0;
	public int edgeBuffer 		= 0;
	public bool lockedOut 		= false;
	Collider2D collider;
	Vector3 size;

	void Start(){
		collider=GetComponent<Collider2D>();
		size = collider.bounds.size;
	}
	void FixedUpdate () {
		Translate();
		LockoutUpdate();
		GravityAction();
		TopCollide();
		LeftCollide();
		RightCollide();
		Phys();
	}

	public void Move(float dir){
		if(!lockedOut && isGrounded){
			velocity.x+=dir*_Root.Apendix.runSpeed;;
		} else if(!lockedOut){
			velocity.x+=dir*_Root.Apendix.airSpeed;;
		}
	}

	public void Jump(float strength){
		RaycastHit2D hitLeft=Physics2D.Raycast(
			transform.position+new Vector3(-size.x*0.4f,size.y*0.501f,0),
			Vector2.up,
			1);
		RaycastHit2D hitRight=Physics2D.Raycast(
			transform.position+new Vector3(size.x*0.4f,size.y*0.501f,0),
			Vector2.up,
			1);
		if((hitRight.collider!=null &&
		   	hitRight.collider.gameObject.layer == LayerMask.NameToLayer("Player") &&
		    isGrounded) ||
		   (hitLeft.collider!=null &&
		 	hitLeft.collider.gameObject.layer == LayerMask.NameToLayer("Player") &&
		   	isGrounded)){
				ActorController actorAbove = hitRight.collider.gameObject.GetComponent<ActorController>();
				actorAbove.Jump(strength*1.2f);
				transform.position += new Vector3(0,0.2f,0);
		} else if(isGrounded){
			isGrounded=false;
			Debug.Log ("Jumped for "+strength);
			velocity.y=strength;
		}
	}

	public void Jump(){
		Jump(_Root.Apendix.jumpPower);
	}
	
	void TopCollide(){
		Vector3 topPlaneLeft = new Vector3(-size.x*0.4f,size.y*0.501f,0);
		Vector3 topPlaneCenter = new Vector3(0,size.y*0.501f,0);
		Vector3 topPlaneRight = new Vector3(size.x*0.4f,size.y*0.501f,0);
		RaycastHit2D hitLeft=Physics2D.Raycast(
			transform.position+topPlaneLeft,
			Vector2.up,
			velocity.y*Time.deltaTime);
		RaycastHit2D hitCenter=Physics2D.Raycast(
			transform.position+topPlaneCenter,
			Vector2.up,
			velocity.y*Time.deltaTime);
		RaycastHit2D hitRight=Physics2D.Raycast(
			transform.position+topPlaneRight,
			Vector2.up,
			velocity.y*Time.deltaTime);
		if(hitLeft.collider!=null&&hitLeft.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			Debug.Log(gameObject.name+" hit "+hitLeft.collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitLeft.point.x-topPlaneLeft.x,hitLeft.point.y-topPlaneLeft.y,0);
			velocity.y*=-_Root.Apendix.bouncyness;
		} else if(hitCenter.collider!=null&&hitCenter.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			Debug.Log(gameObject.name+" hit "+hitCenter.collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitCenter.point.x-topPlaneCenter.x,hitCenter.point.y-topPlaneCenter.y,0);
			velocity.y*=-_Root.Apendix.bouncyness;
		} else if(hitRight.collider!=null&&hitRight.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			Debug.Log(gameObject.name+" hit "+hitRight.collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitRight.point.x-topPlaneRight.x,hitRight.point.y-topPlaneRight.y,0);
			velocity.y*=-_Root.Apendix.bouncyness;
		}
		Debug.DrawRay(transform.position+topPlaneLeft,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+topPlaneCenter,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+topPlaneRight,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
	}

	void Translate(){
		transform.position -= new Vector3(_Root.Apendix.levelScrollSpeed*Time.deltaTime,0,0);
	}

	void GravityAction(){
		velocity.y+=_Root.Apendix.actorGravity*Time.deltaTime;
		Vector3 groundPlaneLeft = new Vector3(-size.x*0.4f,-size.y*0.501f,0);
		Vector3 groundPlaneCenter = new Vector3(0,-size.y*0.501f,0);
		Vector3 groundPlaneRight = new Vector3(size.x*0.4f,-size.y*0.501f,0);
		RaycastHit2D hitLeft=Physics2D.Raycast(
			transform.position+groundPlaneLeft,
			-Vector2.up,
			-velocity.y*Time.deltaTime);
		RaycastHit2D hitCenter=Physics2D.Raycast(
			transform.position+groundPlaneCenter,
			-Vector2.up,
			-velocity.y*Time.deltaTime);
		RaycastHit2D hitRight=Physics2D.Raycast(
			transform.position+groundPlaneRight,
			-Vector2.up,
			-velocity.y*Time.deltaTime);
		if(hitLeft.collider!=null&&hitLeft.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitLeft.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitLeft.point.x-groundPlaneLeft.x,hitLeft.point.y-groundPlaneCenter.y,0);
			velocity.y=0;
			isGrounded=true;
		} else if(hitCenter.collider!=null&&hitCenter.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitCenter.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitCenter.point.x-groundPlaneCenter.x,hitCenter.point.y-groundPlaneCenter.y,0);
			velocity.y=0;
			isGrounded=true;
		} else if(hitRight.collider!=null&&hitRight.collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitRight.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitRight.point.x-groundPlaneRight.x,hitRight.point.y-groundPlaneRight.y,0);
			velocity.y=0;
			isGrounded=true;
		} else {
			isGrounded = false;
		}
		Debug.DrawRay(transform.position+groundPlaneLeft,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+groundPlaneCenter,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+groundPlaneRight,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
	}

	void LeftCollide(){
		Vector3 leftPlaneTop = new Vector3(-size.x*0.501f,size.y*0.4f,0);
		Vector3 leftPlaneMid = new Vector3(-size.x*0.501f,0,0);
		Vector3 leftPlaneBot = new Vector3(-size.x*0.501f,-size.y*0.4f,0);
		RaycastHit2D hitTop=Physics2D.Raycast(
			transform.position+leftPlaneTop,
			-Vector2.right,
			-velocity.x*Time.deltaTime);
		RaycastHit2D hitMid=Physics2D.Raycast(
			transform.position+leftPlaneMid,
			-Vector2.right,
			-velocity.x*Time.deltaTime);
		RaycastHit2D hitBot=Physics2D.Raycast(
			transform.position+leftPlaneBot,
			-Vector2.right,
			-velocity.x*Time.deltaTime);
		if(hitTop.collider!=null&&hitTop.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			Debug.Log(gameObject.name+" hit "+hitTop.collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitTop.point.x-leftPlaneTop.x,hitTop.point.y-leftPlaneTop.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitMid.collider!=null&&hitMid.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			Debug.Log(gameObject.name+" hit "+hitMid.collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitMid.point.x-leftPlaneMid.x,hitMid.point.y-leftPlaneMid.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitBot.collider!=null&&hitBot.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			Debug.Log(gameObject.name+" hit "+hitBot.collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitBot.point.x-leftPlaneBot.x,hitBot.point.y-leftPlaneBot.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		}
		Debug.DrawRay(transform.position+leftPlaneTop,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+leftPlaneMid,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+leftPlaneBot,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
	}
	
	void RightCollide(){
		Vector3 rightPlaneTop = new Vector3(size.x*0.501f,size.y*0.4f,0);
		Vector3 rightPlaneMid = new Vector3(size.x*0.501f,0,0);
		Vector3 rightPlaneBot = new Vector3(size.x*0.501f,-size.y*0.4f,0);
		RaycastHit2D hitTop=Physics2D.Raycast(
			transform.position+rightPlaneTop,
			Vector2.right,
			velocity.x*Time.deltaTime);
		RaycastHit2D hitMid=Physics2D.Raycast(
			transform.position+rightPlaneMid,
			Vector2.right,
			velocity.x*Time.deltaTime);
		RaycastHit2D hitBot=Physics2D.Raycast(
			transform.position+rightPlaneBot,
			Vector2.right,
			velocity.x*Time.deltaTime);
		if(hitTop.collider!=null&&hitTop.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			Debug.Log(gameObject.name+" hit "+hitTop.collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitTop.point.x-rightPlaneTop.x,hitTop.point.y-rightPlaneTop.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitMid.collider!=null&&hitMid.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			Debug.Log(gameObject.name+" hit "+hitMid.collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitMid.point.x-rightPlaneMid.x,hitMid.point.y-rightPlaneMid.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitBot.collider!=null&&hitBot.collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			Debug.Log(gameObject.name+" hit "+hitBot.collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitBot.point.x-rightPlaneBot.x,hitBot.point.y-rightPlaneBot.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		}
		Debug.DrawRay(transform.position+rightPlaneTop,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+rightPlaneMid,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+rightPlaneBot,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
	}

	void Phys(){
		Vector3 newPos = transform.position;
		newPos.x+=velocity.x*Time.deltaTime;
		newPos.y+=velocity.y*Time.deltaTime;
		transform.position=newPos;
		if(isGrounded){
			velocity.x-=velocity.x*Time.deltaTime*_Root.Apendix.friction;;
		} else {
			velocity.x-=velocity.x*Time.deltaTime*_Root.Apendix.airFriction;;
		}
	}

	void LockoutUpdate(){
		if(lockedOut){
			if(lockoutTimer == 0){
				lockedOut = false;
			} else {
				lockoutTimer--;
				Debug.Log ("Lockout remaining: "+lockoutTimer);
			}
		}
	}

	void Lockout(int time){
		Debug.Log ("Setting lockout for "+time);
		lockedOut = true;
		lockoutTimer = time;
	}
	void Lockout(){
		Lockout (6);
	}

}
