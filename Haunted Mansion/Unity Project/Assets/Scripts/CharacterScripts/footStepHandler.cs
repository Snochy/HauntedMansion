using UnityEngine;
using System.Collections;

public class footStepHandler : MonoBehaviour {

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
                GameObject.FindWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.Step);
				played = true;
			}
		}
		}
		if(hit.collider == null)
			played = false;
	}

}
