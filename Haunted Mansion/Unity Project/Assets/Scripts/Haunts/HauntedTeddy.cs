using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HauntedTeddy : MonoBehaviour
{
    private GameObject teddyBearGO;
    private GameObject maze;
    public int teddyCount;
    public int resetter;

    public int[] floors = new int[3];
    
    void Start()
    {
        maze = GameObject.Find("Maze(Clone)") as GameObject;
        teddyBearGO = PropBase.Get(PropID.TeddyBear).Prefab;
        SpawnTeddies();
    }

    void Update()
    {
        int count = 0;
        List<PropID> ListOfDestroyedGameobjects = GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().ListOfDestroyedGameobjects;
        foreach (PropID Go in ListOfDestroyedGameobjects)
            if (Go == PropID.TeddyBear)
                count++;
        if(count >= teddyCount)
            GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().ObjectiveComplete(true);
    }

    private void SpawnTeddies()
    {
        for (int i = 0; i < teddyCount; i++)
        {

            GameObject teddyBear = Instantiate(teddyBearGO) as GameObject;
            teddyBear.GetComponent<PropController>().canBePickedUp = true;
            teddyBear.GetComponent<PropController>().isHighlightable = true;
            teddyBear.GetComponent<PropController>().propID = PropBase.Get(PropID.TeddyBear).Id;

            IntVector2 temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));

            while (maze.GetComponent<Maze>().groundCells[temp.x, temp.z] == null || maze.GetComponent<Maze>().groundCells[temp.x, temp.z].roomType == RoomType.EntranceHall)
                temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));

            switch (RandomFloorSpawn)
            {
                case 1: 
                      teddyBear.transform.parent = maze.GetComponent<Maze>().basementCells[temp.x, temp.z].transform;
                      teddyBear.name = (i + 1) + " TeddyBear Basement ";
                      break;
                case 2: 
                      teddyBear.transform.parent = maze.GetComponent<Maze>().groundCells[temp.x, temp.z].transform;
                      teddyBear.name = (i + 1) + " TeddyBear Ground ";
                      break;
                case 3: 
                      teddyBear.transform.parent = maze.GetComponent<Maze>().upperCells[temp.x, temp.z].transform;
                      teddyBear.name = (i + 1) + " TeddyBear Upper ";
                      break;
            }

            teddyBear.transform.rotation = Random.rotation;
            teddyBear.transform.localPosition =
                    new Vector3(Random.Range(-214, 214), Random.Range(17, 270), Random.Range(-214, 214));

            int counter = 0;
            foreach (int ints in floors)
                if(ints == 1)
                counter++;

            if (counter >= 3)
                ResetFloors();
        }
    }

    private int RandomFloorSpawn
    {
        get
        {
            int skips = Random.Range(0, 2 - resetter);
            for (int i = 0; i < 3; i++)
            {
                if (floors[i] == 0)
                {
                    if (skips == 0)
                    {
                        floors[i] = 1;
                        resetter++;
                        return i + 1;
                    }
                    skips -= 1;
                }
            }
            throw new System.InvalidOperationException("No more floors can be used");
        }
    }

    private void ResetFloors()
    {
        resetter = 0;
        for (int i = 0; i < 2; i++)
            floors[i] = 0;
    }

    public void HauntedReaction(PropID propID)
    {
        if (propID == PropID.TeddyBear)
            TeddyDestroyed();
    }

    public void TeddyDestroyed()
    {
        teddyCount--;
    }
}
