using UnityEngine;
using System.Collections;

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
		public Vector3 midpoint{
			get{return player1.GetMidPoint();}
		}
	}
}
