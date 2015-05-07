﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PropsSpawner : MonoBehaviour {

	public List<GameObject> smallObjects = new List<GameObject>();
	public List<GameObject> largeObjects = new List<GameObject>();

	private bool spawnedProps = false;

    [Range(0f, 1f)]
    public float propProbability;

	public void AddProps()
	{
		GameObject[] largeSpawns = GameObject.FindGameObjectsWithTag("LargeObject");
        GameObject prop;

		foreach(GameObject go in largeSpawns)
		{
            if(!go.transform.parent.GetComponent<MazeWall>().SpawnedProp)
                if(Random.value < propProbability ? true : false)
                {
			        prop = Instantiate(largeObjects[Random.Range(0,largeObjects.Count)], go.transform.position, go.transform.rotation)as GameObject;
                    prop.transform.parent = go.transform;
                    prop.transform.parent.parent.GetComponent<MazeWall>().SpawnedProp = true;
                }

		}

		GameObject[] smallSpawns = GameObject.FindGameObjectsWithTag("SmallObject");

		foreach(GameObject go in smallSpawns)
		{
             if(!go.transform.parent.GetComponent<MazeWall>().SpawnedProp)
                 if (Random.value < propProbability ? true : false)
                 {
                     prop = Instantiate(smallObjects[Random.Range(0, smallObjects.Count)], go.transform.position, go.transform.rotation) as GameObject;
                     prop.transform.parent = go.transform;
                     prop.transform.parent.parent.GetComponent<MazeWall>().SpawnedProp = true;
                 }
		}
	}
}