﻿using UnityEngine;
using System.Collections;

public class PlayerAnimator : MonoBehaviour {
	public Transform frontLeg;
	public Transform backLeg;
	public Transform topLid;
	public Transform bottomLid;
	public Transform eye;
	public Transform butt;
	public float legSpeed;
	public float legDistance;
	public float EyeSpeed;
	public float EyeDistance;
	public bool running;
	public Transform offset;
	public float speed=10;
	void Start(){
		speed=Random.Range(9,11);
		Vector3 rot = butt.rotation.eulerAngles;
		rot.z+=Random.Range(0,360);
		butt.rotation=Quaternion.Euler(rot);
	}
	void Update () {
		Vector3 rot;
		if(running){
			rot = frontLeg.rotation.eulerAngles;
			rot.z=Mathf.Sin (Time.time*legSpeed)*legDistance;
			frontLeg.rotation=Quaternion.Euler(rot);

			rot = backLeg.rotation.eulerAngles;
			rot.z=Mathf.Cos (-Time.time*legSpeed)*legDistance;
			backLeg.rotation=Quaternion.Euler(rot);
		}

		rot = eye.rotation.eulerAngles;
		rot.z=Mathf.Sin (Time.time*EyeSpeed)*EyeDistance;
		eye.rotation=Quaternion.Euler(rot);

		float eyeCloseAmount=Mathf.Max (Mathf.Sin(Time.time*0.8f)-0.9f,0);
		
		rot = topLid.rotation.eulerAngles;
		rot.z=eyeCloseAmount*-160;
		topLid.rotation=Quaternion.Euler(rot);

		rot = bottomLid.rotation.eulerAngles;
		rot.z=eyeCloseAmount*160;
		bottomLid.rotation=Quaternion.Euler(rot);

		rot = butt.rotation.eulerAngles;
		rot.z+=Time.deltaTime*10;
		butt.rotation=Quaternion.Euler(rot);

	}
}
