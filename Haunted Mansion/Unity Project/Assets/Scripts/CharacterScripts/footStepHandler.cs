using UnityEngine;
using System.Collections;

public class footStepHandler : MonoBehaviour {

	public AudioSource stepSound;
	public bool played = false;
	public LayerMask mask = -1;
	
	void Update()
	{
		RaycastHit hit;
		if ( Physics.Raycast(transform.position, Vector3.down, out hit, 10f, mask) )
		{
		if(!played)
		{
			if(hit.collider != null)
			{
				stepSound.Play ();
				played = true;
			}
		}
		}
		if(hit.collider == null)
			played = false;

		
		print (hit.collider);
	}

}
