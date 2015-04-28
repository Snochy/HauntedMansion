using UnityEngine;
using System.Collections;

public class HauntedTeddy : MonoBehaviour
{
    private GameObject teddyBearGO;
    private GameObject maze;
    
    void Start()
    {
        maze = GameObject.Find("Maze(Clone)") as GameObject;
        teddyBearGO = Resources.Load("props/TeddyBear01") as GameObject;
        SpawnTeddies();
    }

    private void SpawnTeddies()
    {
        for (int i = 0; i < 3; i++)
        {
            GameObject teddyBear = Instantiate(teddyBearGO) as GameObject;
            teddyBear.name = "TeddyBear Ground " + (i+1);
            IntVector2 temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));
            while (maze.GetComponent<Maze>().groundCells[temp.x, temp.z] == null)
                temp = new IntVector2(Random.Range(0, maze.GetComponent<Maze>().size.x), Random.Range(0, maze.GetComponent<Maze>().size.z));

            teddyBear.transform.parent = maze.GetComponent<Maze>().groundCells[temp.x, temp.z].transform;
            teddyBear.transform.rotation = Random.rotation;
            teddyBear.transform.localPosition =
                    new Vector3(Random.Range(-214, 214), Random.Range(17, 270), Random.Range(-214, 214));
        }
    }
}
