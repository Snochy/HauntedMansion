using UnityEngine;
using System.Collections;

public class FlashLightSync : MonoBehaviour {

	public Transform flashlight;
    public Transform cameraFacingSync;
    public Vector3 point;

	public LayerMask layerMask;

    public bool isRaising = false;
    public float startTime;
    public Vector3 startMarker;
    public Vector3 endMarker;
    public float journeyLength;
    public Vector3 orginPos;

    void Start()
    {
        orginPos = flashlight.transform.localPosition;
    }

	void Update () {

		RaycastHit hit;
			if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity,layerMask))
			{
				flashlight.LookAt(hit.point);
			}

	}
}
