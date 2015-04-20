using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class _Root{
	private static PlayerLogic _playerLogic;
	public static PlayerLogic playerLogic{
		get{
			if(_playerLogic==null){
				_playerLogic=new PlayerLogic();
			}
			return _playerLogic;
		}
	}
	public class PlayerLogic{
		public playerController player1;
		public playerController player2;
		public bool tether=true;
		public Vector3 midpoint{
			get{return player1.GetMidPoint();}
		}
		public playerController GetRandomPlayer(){
			if(Random.value>0.5f){
				return player1;
			}else{
				return player2;
			}
		}
	}

	private static LinkLogic _linkLogic;
	public static LinkLogic linkLogic{
		get{
			if(_linkLogic==null){
				_linkLogic=new LinkLogic();
				_linkLogic.links=new List<LinkController>();
			}
			return _linkLogic;
		}
	}
	public class LinkLogic{
		public IList<LinkController> links;
	}
	public static class Apendix{
		public static float actorGravity		= -32;
		public static float levelScrollSpeed	= 0;
		public static float broReviveDistance	= 1.5f;
		public static float friction			= 10;
		public static float airFriction 		= 2;
		public static float runSpeed			= 1.2f;
		public static float airSpeed			= 0.4f;
		public static float jumpPower			= 16;
		public static float bouncyness 			= 0.5f;
		public static int lockoutTime			= 6;
		public static int edgeBufferTime		= 4;
		public static float tileSpawnRange		= 30;
		public static float tileDespawnRange	=-30;
		public static float seekerTurnSpeed		= 180;
		public static float seekerMoveSpeed		= 5;
	}
}
