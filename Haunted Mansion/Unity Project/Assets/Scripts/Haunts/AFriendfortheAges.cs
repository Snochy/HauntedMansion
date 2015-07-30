using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AFriendfortheAges : MonoBehaviour
{
    private GameObject cursedPicturesGO;
    public GameObject ghostPrefab;
    private GameObject maze;
    public int pictureCount;
    public int resetter;

    public int[] floors = new int[3];
    
    void Start()
    {
        maze = GameObject.Find("Maze(Clone)") as GameObject;
        cursedPicturesGO = PropBase.Get(PropID.CursedPainting).Prefab;
        ghostPrefab = EntityBase.Get(EntityID.Ghost).Prefab;
        SpawnPictures();
        SpawnGhost();
    }

    void Update()
    {
        int count = 0;
        List<PropID> ListOfDestroyedGameobjects = GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().ListOfDestroyedGameobjects;
        foreach (PropID Go in ListOfDestroyedGameobjects)
            if (Go == PropID.CursedPainting)
                count++;
        if (count >= pictureCount)
            GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().ObjectiveComplete(true);

        List<GameObject> ListOfDeadPlayers = GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().listOfDeadPlayers;
        if (GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().listOfPlayers.Count >= 1)
            if (ListOfDeadPlayers.Count >= GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().listOfPlayers.Count)
                GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().ObjectiveComplete(false);
    }

    private void SpawnPictures()
    {
        int paintingsSpawned = 0;

        while (paintingsSpawned < pictureCount)
        {
            GameObject[] listOfProps = GameObject.FindGameObjectsWithTag("Walldecor");

            int random;
            bool redo = false;
            do
            {
                redo = false;
                random = Random.Range(0, listOfProps.Length);

                if (listOfProps[random].GetComponent<PropController>().propID != PropID.Painting)
                    redo = true;

            } while (redo);

            if (listOfProps[random].GetComponent<PropController>().propID != PropID.CursedPainting)
            {
                GameObject cursedPictures = Instantiate(cursedPicturesGO) as GameObject;
                cursedPictures.GetComponent<PropController>().canBePickedUp = PropBase.Get(PropID.CursedPainting).canBePickedUp;
                cursedPictures.GetComponent<PropController>().interactable = PropBase.Get(PropID.CursedPainting).interactable;
                cursedPictures.GetComponent<PropController>().interactionDistance = PropBase.Get(PropID.CursedPainting).interactionDistance;
                cursedPictures.GetComponent<PropController>().propID = PropBase.Get(PropID.CursedPainting).Id;
                cursedPictures.transform.parent = listOfProps[random].transform.parent;
                cursedPictures.transform.localRotation = listOfProps[random].transform.localRotation;
                cursedPictures.transform.localPosition = Vector3.zero;
                Destroy(listOfProps[random].gameObject);
                paintingsSpawned++;
            }
        }
    }

    private void SpawnGhost()
    {
        GameObject ghost = Instantiate(ghostPrefab) as GameObject;
        ghost.GetComponent<AI>().InstantiateEntity(EntityID.Ghost);

        IntVector2 temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));

        while (maze.GetComponent<Maze>().groundCells[temp.x, temp.z] == null || maze.GetComponent<Maze>().groundCells[temp.x, temp.z].roomType == RoomType.EntranceHall)
            temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));

        Vector3 housePos = Vector3.zero;

        switch (RandomFloorSpawn)
        {
            case 1:
                housePos = maze.GetComponent<Maze>().basementCells[temp.x, temp.z].transform.position;
                break;
            case 2:
                housePos = maze.GetComponent<Maze>().groundCells[temp.x, temp.z].transform.position;
                break;
            case 3:
                housePos = maze.GetComponent<Maze>().upperCells[temp.x, temp.z].transform.position;
                break;
        }

        ghost.transform.position =
        new Vector3(housePos.x, housePos.y + 25f, housePos.z);
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

    public void HauntedReaction(PropID propID)
    {
        if (propID == PropID.CursedPainting)
            TeddyDestroyed();
    }

    public void TeddyDestroyed()
    {
        pictureCount--;
    }
}
