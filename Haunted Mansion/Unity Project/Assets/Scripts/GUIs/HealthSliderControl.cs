using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class HealthSliderControl : MonoBehaviour {
	
	void Start () 
	{
		PlayerStatsHandler.HealthStatsChanged += healthUpdate;
	}

	void healthUpdate (float health)
	{
		gameObject.GetComponent<Slider>().value = health;
	}
}
