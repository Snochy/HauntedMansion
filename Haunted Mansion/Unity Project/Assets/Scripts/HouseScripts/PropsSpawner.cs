using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PropsSpawner : MonoBehaviour {
    
    [Range(0f, 1f)]
    public float propProbability;

	public void AddProps()
	{
		GameObject[] largeSpawns = GameObject.FindGameObjectsWithTag("Prop");
        GameObject prop;

        if (PropBase.PropListSpawnables.Count >= 1)
        {
            foreach (GameObject go in largeSpawns)
            {
                if (go.transform.parent.parent.gameObject.GetComponent<MazeCell>().roomType != RoomType.EntranceHall && go.transform.parent.parent.gameObject.GetComponent<MazeCell>().roomType != RoomType.Stairs)
                {
                    if (!go.transform.parent.GetComponent<MazeWall>().SpawnedProp)
                        if (Random.value < propProbability ? true : false)
                        {
                            int index = Random.Range(0, PropBase.PropListSpawnables.Count);

                            if (PropBase.PropListSpawnables[index].Type.Prefab != null)
                            {
                                prop = Instantiate(PropBase.PropListSpawnables[index].Type.Prefab, go.transform.position, go.transform.rotation) as GameObject;
                                prop.transform.parent = go.transform;
                                prop.transform.localPosition = new Vector3(prop.transform.localPosition.x + Randomizer(), prop.transform.localPosition.y, prop.transform.localPosition.z);
                                prop.transform.Rotate(0, Randomizer(15), 0);
                                prop.transform.parent.parent.GetComponent<MazeWall>().SpawnedProp = true;
                            }
                            else print(PropBase.PropListSpawnables[index].Type.Prefab + " failed to spawn because prefab was null");
                        }
                }

            }
        }
	}

    private float Randomizer()
    {
        float random = Random.Range(-180f, 180f);
        return random;
    }

    private float Randomizer(float i)
    {
        float random = Random.Range(-i, i);
        return random;
    }
}