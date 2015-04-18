using UnityEngine;
using System.Collections;

public class HauntedTeddy : MonoBehaviour
{
    public GameObject teddyBearGO;

    public GameObject database;
    
    void Start()
    {
        database = GameObject.FindGameObjectWithTag("GameDataBase");
        SpawnTeddies();
    }

    private void SpawnTeddies()
    {
        for (int i = 0; i < 3; i++)
        {
            GameObject teddyBear = Instantiate(teddyBearGO) as GameObject;
            teddyBear.name = "TeddyBear Ground " + i;
            teddyBear.transform.parent = database.GetComponent<RoomDataBase>().groundCells[Random.Range(0, database.GetComponent<RoomDataBase>().demis.x), Random.Range(0, database.GetComponent<RoomDataBase>().demis.z)].transform;
            teddyBear.transform.rotation = Random.rotation;
            teddyBear.transform.localPosition =
                    new Vector3(Random.Range(-214, 214), Random.Range(17, 270), Random.Range(-214, 214));
        }
    }
}
