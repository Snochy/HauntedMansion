using UnityEngine;
using System.Collections;

public class DoorCollider : MonoBehaviour {

	void Update () {
	
		GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
		foreach(GameObject player in players)
		{
			if(transform.GetComponent<Collider>() != null)
				Physics.IgnoreCollision(transform.GetComponent<Collider>(), player.transform.GetComponent<Collider>());
		}
	}
}
