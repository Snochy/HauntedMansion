using UnityEngine;
using System.Collections;

public class MenuLightsHandler : MonoBehaviour {

	public float maxBrightness = 0;
	public float minBrightness = 0;
	public float rate = 1f;

	void Start()
	{
		maxBrightness = GetComponent<Light>().intensity;
	}

	void Update () {

		float time = Mathf.PingPong(Time.time,1);

		GetComponent<Light>().intensity = Mathf.Lerp (0, maxBrightness, time);
	}
}
