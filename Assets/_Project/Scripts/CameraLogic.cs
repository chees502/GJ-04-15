using UnityEngine;
using System.Collections;

public class CameraLogic : MonoBehaviour {
	public float speed=1;
	public float xCap=20;

	void Update () {
		Vector3 destination = new Vector3();
		destination.z=-10;
		destination.x=Mathf.Clamp(_Root.playerLogic.midpoint.x,-xCap,xCap);
		transform.position=Vector3.Lerp(transform.position,destination,Time.deltaTime*speed);
	}
}
