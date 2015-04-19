using UnityEngine;
using System.Collections;

public class ActorController : MonoBehaviour {
	public bool isGrounded		= false;
	public float actorWidth 	= 1;
	public float actorHeight 	= 1;
	public int lockoutTimer 	= 0;
	public bool lockedOut 		= false;
	public bool ignoreLockout	= false;
	public int edgeBufferTimer 	= 0;
	public bool inEdgeBuffer 	= false;
	public bool dead			= false;
	public Vector3 size;
	Collider2D collider;
	Vector2 velocity;
	// Bottom Feeler Origins
	Vector3 groundPlaneLeft;
	Vector3 groundPlaneCenter;
	Vector3 groundPlaneRight;
	// Top Feeler Origins
	Vector3 topPlaneLeft;
	Vector3 topPlaneCenter;
	Vector3 topPlaneRight;
	// Left Feeler Origins
	Vector3 leftPlaneTop;
	Vector3 leftPlaneMid;
	Vector3 leftPlaneBot;
	// Right Feeler Origins
	Vector3 rightPlaneTop;
	Vector3 rightPlaneMid;
	Vector3 rightPlaneBot;
	
	void Start(){
		collider			= GetComponent<Collider2D>();
		size 				= collider.bounds.size;
		// Bottom Feeler Origins
		groundPlaneLeft 	= new Vector3(-size.x*0.4f,-size.y*0.501f,0);
		groundPlaneCenter 	= new Vector3(0,-size.y*0.501f,0);
		groundPlaneRight 	= new Vector3(size.x*0.4f,-size.y*0.501f,0);
		// Top Feeler Origins
		topPlaneLeft 		= new Vector3(-size.x*0.4f,size.y*0.501f,0);
		topPlaneCenter 		= new Vector3(0,size.y*0.501f,0);
		topPlaneRight 		= new Vector3(size.x*0.4f,size.y*0.501f,0);
		// Left Feeler Origins
		leftPlaneTop 		= new Vector3(-size.x*0.501f,size.y*0.4f,0);
		leftPlaneMid 		= new Vector3(-size.x*0.501f,0,0);
		leftPlaneBot 		= new Vector3(-size.x*0.501f,-size.y*0.4f,0);
		// Right Feeler Origins
		rightPlaneTop 		= new Vector3(size.x*0.501f,size.y*0.4f,0);
		rightPlaneMid 		= new Vector3(size.x*0.501f,0,0);
		rightPlaneBot 		= new Vector3(size.x*0.501f,-size.y*0.4f,0);
	}
	void FixedUpdate () {        
		if(!dead){
			LockoutUpdate();
			Translate();
			GravityAction();
			TopCollide();
			LeftCollide();
			RightCollide();
			Phys();
		}

	}

	public void Move(float dir){
		if(!lockedOut && isGrounded){
			velocity.x+=dir*_Root.Apendix.runSpeed;
		} else if(!lockedOut){
			velocity.x+=dir*_Root.Apendix.airSpeed;
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
		if(hitRight.collider!=null &&
		   hitRight.collider.gameObject.layer == LayerMask.NameToLayer("Player") &&
		   isGrounded){
				ActorController actorAbove = hitRight.collider.gameObject.GetComponent<ActorController>();
				actorAbove.Jump(strength*1.2f);
				transform.position += new Vector3(0,0.2f,0);
				Debug.Log("Did boosted jump");
		} else if(hitLeft.collider!=null &&
			hitLeft.collider.gameObject.layer == LayerMask.NameToLayer("Player") &&
			isGrounded){
				ActorController actorAbove = hitLeft.collider.gameObject.GetComponent<ActorController>();
				actorAbove.Jump(strength*1.2f);
				transform.position += new Vector3(0,0.2f,0);
				Debug.Log("Did boosted jump");
		} else if(isGrounded){
			isGrounded=false;
			Debug.Log ("Jumped for "+strength);
			velocity.y=strength;
		}
	}

	public void Jump(){
		Jump(_Root.Apendix.jumpPower);
	}
	
	public RaycastHit2D[] LeftCollide(){
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
		return(new RaycastHit2D[]{hitTop, hitMid, hitBot});
	}
	
	public RaycastHit2D[] RightCollide(){
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
		return(new RaycastHit2D[]{hitTop, hitMid, hitBot});
	}
	
	public RaycastHit2D[] BottomCollide(){
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
		return(new RaycastHit2D[]{hitLeft, hitCenter, hitRight});
	}
	
	public RaycastHit2D[] TopCollide(){
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
		return(new RaycastHit2D[]{hitLeft, hitCenter, hitRight});
	}

	void TopCollisionAction(){
		RaycastHit2D[] hitArray = TopCollide();
		if(hitArray[0].collider!=null&&hitArray[0].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[0].collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitArray[0].point.x-topPlaneLeft.x,hitArray[0].point.y-topPlaneLeft.y,0);
			velocity.y*=-_Root.Apendix.bouncyness;
		} else if(hitArray[1].collider!=null&&hitArray[1].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[1].collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitArray[1].point.x-topPlaneCenter.x,hitArray[1].point.y-topPlaneCenter.y,0);
			velocity.y*=-_Root.Apendix.bouncyness;
		} else if(hitArray[2].collider!=null&&hitArray[2].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[2].collider.gameObject.name+" with top face");
			transform.position=new Vector3(hitArray[2].point.x-topPlaneRight.x,hitArray[2].point.y-topPlaneRight.y,0);
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
		RaycastHit2D[] hitArray = BottomCollide();
		if(hitArray[0].collider!=null&&hitArray[0].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitLeft.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitArray[0].point.x-groundPlaneLeft.x,hitArray[0].point.y-groundPlaneCenter.y,0);
			velocity.y=0;
			isGrounded=true;
		} else if(hitArray[1].collider!=null&&hitArray[1].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitCenter.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitArray[1].point.x-groundPlaneCenter.x,hitArray[1].point.y-groundPlaneCenter.y,0);
			velocity.y=0;
			isGrounded=true;
		} else if(hitArray[2].collider!=null&&hitArray[2].collider!=gameObject.GetComponent<Collider2D>()&&velocity.y<0){
			//Debug.Log(gameObject.name+" hit "+hitRight.collider.gameObject.name+" with bottom face");
			transform.position=new Vector3(hitArray[2].point.x-groundPlaneRight.x,hitArray[2].point.y-groundPlaneRight.y,0);
			velocity.y=0;
			isGrounded=true;
		} else {
			if(!inEdgeBuffer && isGrounded){
				inEdgeBuffer = true;
				edgeBufferTimer = _Root.Apendix.edgeBufferTime;
			} else if(inEdgeBuffer){
				edgeBufferTimer--;
				if(edgeBufferTimer<=0){
					inEdgeBuffer = false;
					isGrounded = false;
				}
			} else {
				isGrounded = false;
				inEdgeBuffer = false;
			}
		}
		Debug.DrawRay(transform.position+groundPlaneLeft,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+groundPlaneCenter,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+groundPlaneRight,new Vector3(0,velocity.y,0)*Time.deltaTime*5);
	}

	void LeftCollisionAction(){
		RaycastHit2D[] hitArray = LeftCollide ();
		if(hitArray[0].collider!=null&&hitArray[0].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			//Debug.Log(gameObject.name+" hit "+hitArray[0].collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitArray[0].point.x-leftPlaneTop.x,hitArray[0].point.y-leftPlaneTop.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitArray[1].collider!=null&&hitArray[1].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			//Debug.Log(gameObject.name+" hit "+hitArray[1].collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitArray[1].point.x-leftPlaneMid.x,hitArray[1].point.y-leftPlaneMid.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitArray[2].collider!=null&&hitArray[2].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x<0){
			//Debug.Log(gameObject.name+" hit "+hitArray[2].collider.gameObject.name+" with left face");
			transform.position=new Vector3(hitArray[2].point.x-leftPlaneBot.x,hitArray[2].point.y-leftPlaneBot.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		}
		Debug.DrawRay(transform.position+leftPlaneTop,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+leftPlaneMid,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
		Debug.DrawRay(transform.position+leftPlaneBot,new Vector3(velocity.x,0,0)*Time.deltaTime*5);
	}

	void RightCollisionAction(){
		RaycastHit2D[] hitArray = RightCollide ();
		if(hitArray[0].collider!=null&&hitArray[0].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[0].collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitArray[0].point.x-rightPlaneTop.x,hitArray[0].point.y-rightPlaneTop.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitArray[1].collider!=null&&hitArray[1].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[1].collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitArray[1].point.x-rightPlaneMid.x,hitArray[1].point.y-rightPlaneMid.y,0);
			velocity.x*=-_Root.Apendix.bouncyness;
			Lockout();
		} else if(hitArray[2].collider!=null&&hitArray[2].collider!=gameObject.GetComponent<Collider2D>()&&velocity.x>0){
			//Debug.Log(gameObject.name+" hit "+hitArray[2].collider.gameObject.name+" with right face");
			transform.position=new Vector3(hitArray[2].point.x-rightPlaneBot.x,hitArray[2].point.y-rightPlaneBot.y,0);
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
		if(!ignoreLockout){
			Debug.Log ("Setting lockout for "+time);
			lockedOut = true;
			lockoutTimer = time;
		}
	}
	void Lockout(){
		Lockout (_Root.Apendix.lockoutTime);
	}

}
