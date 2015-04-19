using UnityEngine;
using System.Collections;

public class SeekerController : MonoBehaviour {

	// Use this for initialization
	public Transform targetPlayer;
	void Start () {
		targetPlayer=_Root.playerLogic.GetRandomPlayer().transform;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 dir = targetPlayer.position-transform.position;
		dir.Normalize();
		float turnAmount=Vector3.Dot(-transform.right,dir);
		transform.Rotate(0,0,turnAmount*Time.deltaTime*_Root.Apendix.seekerTurnSpeed);
		float speedAmount=Mathf.Max(Vector3.Dot(transform.up,dir),0);
		transform.position+=transform.up*Time.deltaTime*_Root.Apendix.seekerMoveSpeed*speedAmount;
	}
	void Kill(){
		
		Destroy(gameObject);
	}
	void OnTriggerEnter2D(Collider2D other){
		Debug.Log ("Hit!!!!!! "+other.gameObject.name);
		if(!other.gameObject.name.Contains("Join")){
			other.gameObject.GetComponent<playerController>().Respawn();
		}
		Kill ();
	}
}
