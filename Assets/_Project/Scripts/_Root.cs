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
		public Vector3 midpoint{
			get{return player1.GetMidPoint();}
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
		public static float actorGravity=-20;
		public static float levelScrollSpeed=1;
	}
}
