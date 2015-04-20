using UnityEngine;
using System.Collections;

public class HauntedTeddy : MonoBehaviour
{
    private GameObject teddyBearGO;

    public GameObject database;
    
    void Start()
    {
        database = GameObject.FindGameObjectWithTag("GameDataBase");
        teddyBearGO = Resources.Load("props/TeddyBear01") as GameObject;
        SpawnTeddies();
    }

    private void SpawnTeddies()
    {
        for (int i = 0; i < 3; i++)
        {
            GameObject teddyBear = Instantiate(teddyBearGO) as GameObject;
            teddyBear.name = "TeddyBear Ground " + i;
            IntVector3 temp = new IntVector3(Random.Range(0, database.GetComponent<RoomDataBase>().demis.x), Random.Range(0, database.GetComponent<RoomDataBase>().demis.z), 0);
            while(database.GetComponent<RoomDataBase>().groundCells[temp.x,temp.y] == null)
                temp = new IntVector3(Random.Range(0, database.GetComponent<RoomDataBase>().demis.x), Random.Range(0, database.GetComponent<RoomDataBase>().demis.z), 0);

            teddyBear.transform.parent = database.GetComponent<RoomDataBase>().groundCells[temp.x,temp.y].transform;
            teddyBear.transform.rotation = Random.rotation;
            teddyBear.transform.localPosition =
                    new Vector3(Random.Range(-214, 214), Random.Range(17, 270), Random.Range(-214, 214));
        }
    }
}
