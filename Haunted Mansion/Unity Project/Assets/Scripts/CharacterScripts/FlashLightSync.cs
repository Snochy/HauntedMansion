using UnityEngine;
using System.Collections;

public class FlashLightSync : MonoBehaviour {

	public Transform flashlight;
    public Transform cameraFacingSync;
    public Vector3 point;

	public LayerMask layerMask;

	void Update () {

		RaycastHit hit;
			if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity,layerMask))
			{
				flashlight.LookAt(hit.point);
                //point = hit.point;
			}

	}
}
