using UnityEngine;
using System.Collections;

public class playerController : MonoBehaviour {
	Vector2 velocity;
	public float friction=1;
	public float runSpeed=1;
	void Update(){
		if(Input.GetKey("a")){
			Move (-1);
		}
		if(Input.GetKey("d")){
			Move (1);
		}
		Phys();
	}
	void Move(float dir){
		Debug.Log (dir);
		velocity.x+=dir*runSpeed;
	}
	void Phys(){
		Vector3 newPos = transform.position;
		newPos.x+=velocity.x*Time.deltaTime;
		newPos.y+=velocity.y*Time.deltaTime;
		transform.position=newPos;
		velocity-=velocity*Time.deltaTime*friction;
	}
}
