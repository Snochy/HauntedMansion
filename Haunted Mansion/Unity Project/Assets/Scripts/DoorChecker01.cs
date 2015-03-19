using UnityEngine;
using System.Collections;

public class DoorChecker01 : MonoBehaviour {

	void Start () {
		RaycastHit hit;
		if (Physics.Raycast(transform.position, transform.right, out hit, 100.0F))
			if(hit.collider != null && hit.collider.transform.tag == "Door")
				{
						gameObject.SetActive(false);
				}

		GetComponent<Collider>().enabled = true;
	}
}
