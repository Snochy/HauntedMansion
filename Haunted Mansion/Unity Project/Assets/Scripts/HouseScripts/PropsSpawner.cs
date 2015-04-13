using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PropsSpawner : MonoBehaviour {

	public List<GameObject> smallObjects = new List<GameObject>();
	public List<GameObject> largeObjects = new List<GameObject>();

	private bool spawnedProps = false;

	public void AddProps()
	{
		GameObject[] largeSpawns = GameObject.FindGameObjectsWithTag("LargeObject");

		foreach(GameObject go in largeSpawns)
		{
			GameObject prop = Instantiate(largeObjects[Random.Range(0,largeObjects.Count)], go.transform.position, go.transform.rotation)as GameObject;
			prop.transform.parent = go.transform.parent;

		}

		GameObject[] smallSpawns = GameObject.FindGameObjectsWithTag("SmallObject");

		foreach(GameObject go in smallSpawns)
		{
			GameObject prop = Instantiate(smallObjects[Random.Range(0,smallObjects.Count)], go.transform.position, go.transform.rotation)as GameObject;
			prop.transform.parent = go.transform.parent;
		}
	}
}