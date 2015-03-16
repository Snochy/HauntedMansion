using UnityEngine;
using System.Collections;

public class DoorCollider : MonoBehaviour {

	void Update () {
	
		GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
		foreach(GameObject player in players)
		{
			if(transform.collider != null)
				Physics.IgnoreCollision(transform.collider, player.transform.collider);
		}
	}
}
