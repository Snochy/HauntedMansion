using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HouseMarker : MonoBehaviour {

	public List<GameObject> rooms = new List<GameObject>();

	public List<GameObject> smallObjects = new List<GameObject>();
	public List<GameObject> largeObjects = new List<GameObject>();

	public int width;
	public int depth;

	private bool spawnedProps = false;

	public bool[,] GroundroomGrid = new bool[4,4]{{false,true,true,false},{false,true,true,false},{false,true,true,false},{false,false,false,false}};
	public bool[,] ToproomGrid = new bool[4,4]{{false,true,true,false},{false,true,true,false},{false,true,true,false},{false,false,false,false}};

	void Start()
	{
		BuildHouse();
	}

	void Update()
	{
		if(!spawnedProps)
		{
			AddProps();
			spawnedProps = true;
		}
	}

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

	public void BuildHouse ()
	{
		
		int layerMask = 1 << 8;
		layerMask = ~layerMask;

		RaycastHit hit;
		GameObject roomBuilt;
		for(int i = 0; i < 4; i++)
			for(int y = 0; y < 4; y++)
				if(!GroundroomGrid[i,y])
					{
						bool foundConnection = false;
						roomBuilt = Instantiate(rooms[Random.Range(0,rooms.Count)], new Vector3((600f * y)+300, 0, (600f * i)+300), rooms[0].transform.rotation) as GameObject;
						for(int z = 0; z < 4; z++)
						{
							if (!(Physics.Raycast(roomBuilt.transform.Find("RoomCenter").position, roomBuilt.transform.Find("RoomCenter").right, out hit, 340F)))
										roomBuilt.transform.Rotate(0, 90, 0);
							else if(hit.transform.gameObject.tag == "Door")
								{
									foundConnection = true;
								}
						}
				
						foreach(Transform door in roomBuilt.transform)
						{
							if(door.tag == "Door" && foundConnection)
							{
								door.gameObject.AddComponent<BoxCollider>();
								door.GetComponent<BoxCollider>().size = new Vector3(60,300,300);
							}
						}
						if(!foundConnection)
							Destroy(roomBuilt);
						else GroundroomGrid[i,y] = true;

						Color randomColor = new Color( Random.Range(0,2), Random.Range(0,2),  Random.Range(0,2), 1);

						roomBuilt.transform.Find("RoomCenter").GetComponent<Light>().color = randomColor;	
					}

		for(int i = 0; i < 4; i++)
			for(int y = 0; y < 4; y++)
				if(!ToproomGrid[i,y])
					{
						bool foundConnection = false;
						roomBuilt = Instantiate(rooms[Random.Range(0,rooms.Count)], new Vector3((600f * y)+300, 337.4f, (600f * i)+300), rooms[0].transform.rotation) as GameObject;
						for(int z = 0; z < 4; z++)
						{
							if (!(Physics.Raycast(roomBuilt.transform.Find("RoomCenter").position, roomBuilt.transform.Find("RoomCenter").right, out hit, 400F)))
							{
										roomBuilt.transform.Rotate(0, 90, 0);
							}
							else if(hit.transform.gameObject.tag == "Door")
									{
										foundConnection = true;
									}
								else print(roomBuilt + " " + i + ":" + y + "Lazer hit (Upper) " + hit.transform.gameObject);
						}
						foreach(Transform door in roomBuilt.transform)
						{
							if(door.tag == "Door" && foundConnection)
							{
								door.gameObject.AddComponent<BoxCollider>();
								door.GetComponent<BoxCollider>().size = new Vector3(60,300,300);
							}
						}
						if(!foundConnection)
							{
								Destroy(roomBuilt);
							}
						else GroundroomGrid[i,y] = true;

						Color randomColor = new Color( Random.Range(0,2), Random.Range(0,2),  Random.Range(0,2), 1);
						
						roomBuilt.transform.Find("RoomCenter").GetComponent<Light>().color = randomColor;
					}
	}
}